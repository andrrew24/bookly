import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailsPageActionButton extends StatelessWidget {
  const DetailsPageActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: () {},
          text: "19.99 €",
          borderRadiusGeometry: const BorderRadius.only(
              topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          color: const Color.fromARGB(255, 255, 255, 255),
          textStyle: Styles.textStyle18.copyWith(
            color: Colors.black,
          ),
        ),
        CustomButton(
          onTap: () {},
          text: "Free preview",
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
