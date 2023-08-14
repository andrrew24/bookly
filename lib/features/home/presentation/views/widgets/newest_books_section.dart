import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_list_shimmmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_vertical_books_list.dart';

class NewestBooksSection extends StatelessWidget {
  const NewestBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return  CustomVerticalBooksList(
            listCount: state.books.length,
            books: state.books,
          );
        } else if (state is NewestBooksFailed) {
          return SliverList(
            delegate: SliverChildListDelegate(
              [
                Center(child: CustomErrorWid(text: state.errorName)),
              ],
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: NewestBooksListShimmer(),
          );
        }
      },
    );
  }
}


