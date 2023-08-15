import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/custom_button.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../methods/get_text.dart';

class DetailsPageActionButton extends StatelessWidget {
  const DetailsPageActionButton({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: () {},
          text: "Free €",
          borderRadiusGeometry: const BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          color: const Color.fromARGB(255, 255, 255, 255),
          textStyle: Styles.textStyle18.copyWith(
            color: Colors.black,
          ),
        ),
        CustomButton(
          onTap: () {
            launchTheUrl(context, bookModel.volumeInfo.previewLink);
          },
          text: getText(bookModel),
          borderRadiusGeometry: const BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
          color: const Color(0xffED8161),
          textStyle: Styles.textStyle16
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}


