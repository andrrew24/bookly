import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly/features/search/presentaion/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return BookItemWidget(bookModel: state.books[index]);
            },
          );
        } else if (state is SearchFailed) {
          return CustomErrorWid(text: state.errName);
        } else if (state is SearchLoading) {
          return const Center(
            child:  SizedBox(
              height: 50,
              width: 50,
              child:  CircularProgressIndicator(
              ),
            ),
          );
        } else {
          return const Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.magnifyingGlass),
              SizedBox(
                height: 25,
              ),
              Text("Search for a book to show result",style: Styles.textStyle18,),
            ],
          ));
        }
      },
    );
  }
}
