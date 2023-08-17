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
          onPressed: () {},
          text: "Add To Cart",
          color: Colors.white,
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16)
              ),
            ),
          ),
        ),
        CustomButton(
          onPressed: () {},
          text: getText(bookModel),
          color: Colors.red,
          textStyle: Styles.textStyle18.copyWith(color: Colors.white),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
