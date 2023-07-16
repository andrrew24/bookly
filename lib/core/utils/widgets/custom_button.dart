import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.borderRadiusGeometry,
      required this.color,
      this.textStyle});

  final void Function() onTap;
  final BorderRadiusGeometry borderRadiusGeometry;
  final Color color;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        width: 160,
        decoration:
            BoxDecoration(color: color, borderRadius: borderRadiusGeometry),
        child: Center(
            child: Text(
          text,
          style: textStyle ?? Styles.textStyle18.copyWith(color: Colors.black),
        )),
      ),
    );
  }
}
