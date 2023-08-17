import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/custom_button.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/features/cart/presentaion/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          onPressed: () {
            if (!(BlocProvider.of<CartCubit>(context)
                .books
                .contains(bookModel))) {
              BlocProvider.of<CartCubit>(context).addBook(bookModel);
            }
          },
          text: "Add To Cart",
          color: Colors.white,
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
        ),
        CustomButton(
          onPressed: () {
            launchTheUrl(context, bookModel.accessInfo!.webReaderLink);
          },
          text: getText(bookModel),
          color: Colors.red,
          textStyle: Styles.textStyle18.copyWith(color: Colors.white),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ),
      ],
    );
  }
}
