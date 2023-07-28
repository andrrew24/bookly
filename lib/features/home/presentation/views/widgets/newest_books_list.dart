import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_item.dart';
import 'newest_books_list_shimmmer.dart';


class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return BookItemWidget(
                  bookModel: state.books[index],
                );
              },
            ),
          );
        } else if (state is NewestBooksFailed) {
          return CustomErrorWid(text: state.errorName);
        } else {
          return const Center(
            child: NewestBooksListShimmer(),
          );
        }
      },
    );
  }
}

