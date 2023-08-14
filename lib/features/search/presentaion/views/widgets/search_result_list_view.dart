

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_vertical_books_list.dart';
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
          return CustomVerticalBooksList(
              listCount: state.books.length, books: state.books);
        } else if (state is SearchFailed) {
          return SliverList(
            delegate: SliverChildListDelegate(
              [
                Center(child: CustomErrorWid(text: state.errName)),
              ],
            ),
          );
        } else if (state is SearchLoading) {
          return const SliverFillRemaining(
            child:   Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(),
            ),
          )
          );
        } else {
        return  SliverToBoxAdapter(
            child:  Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height *0.3,
              ),
              const Icon(FontAwesomeIcons.magnifyingGlass),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Search for a book to show result",
                textAlign: TextAlign.center,
                style: Styles.textStyle18,
              ),
            ],
          )),
          );
        }
      },
    );
  }
}



