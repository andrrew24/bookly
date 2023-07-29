import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'custom_book_image.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail ?? "",
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailed) {
          return CustomErrorWid(text: state.errName);
        } else {
          return const LoadingIndicator(indicatorType: Indicator.ballBeat);
        }
      },
    );
  }
}
