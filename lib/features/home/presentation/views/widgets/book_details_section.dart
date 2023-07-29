import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';
import 'details_page_action_button.dart';
import 'rating_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .24),
          child: const CustomBookImage(
            imageUrl: kDefaultImageLink,
          ),
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          "Rudyard kipling",
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 10,
        ),
        const RatingWidget(
          averageRating: 0,
          ratingCount: 0,
        ),
        const SizedBox(
          height: 20,
        ),
        const DetailsPageActionButton(),
      ],
    );
  }
}
