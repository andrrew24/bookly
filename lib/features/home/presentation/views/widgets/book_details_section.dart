import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';
import 'details_page_action_button.dart';
import 'rating_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

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
        const RatingWidget(),
        const SizedBox(
          height: 20,
        ),
        const DetailsPageActionButton(),
      ],
    );
  }
}
