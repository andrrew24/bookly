import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.leadOnPressed, required this.trailOnPressed, required this.leadIcon, required this.trailIcon});

  final void Function() leadOnPressed;
  final void Function() trailOnPressed;
  final Icon leadIcon;
  final Icon trailIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: leadOnPressed, icon: leadIcon),
        IconButton(
            onPressed: trailOnPressed, icon: trailIcon),
      ],
    );
  }
}
