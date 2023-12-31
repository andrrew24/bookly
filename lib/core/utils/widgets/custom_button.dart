import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.color,
      this.textStyle, required this.shape});

  final void Function() onPressed;
  final Color color;
  final MaterialStateProperty<OutlinedBorder?> shape;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
            padding:
                const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 25,vertical: 15)),
            shape: shape),
        child: Center(
            child: Text(
          text,
          style: textStyle ?? Styles.textStyle18.copyWith(color: Colors.black),
        )));
  }
}

