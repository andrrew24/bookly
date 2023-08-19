import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';
import 'details_page_action_button.dart';
import 'rating_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width.width * .24),
          child: CustomBookImage(
            imageUrl:
                bookModel.volumeInfo.imageLinks?.thumbnail ?? " ",
          ),
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle25,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          bookModel.volumeInfo.categories == null ? "": bookModel.volumeInfo.categories![0],
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 10,
        ),
        RatingWidget(
          averageRating: bookModel.volumeInfo.averageRating?.toDouble() ?? 0,
          ratingCount: bookModel.volumeInfo.ratingsCount?.toInt() ?? 0,
        ),
        const SizedBox(
          height: 20,
        ),
         DetailsPageActionButton(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
