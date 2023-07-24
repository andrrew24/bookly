import 'package:flutter/material.dart';


class CustomErrorWid extends StatelessWidget {
  const CustomErrorWid({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}