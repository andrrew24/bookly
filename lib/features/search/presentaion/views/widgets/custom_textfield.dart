import 'package:bookly/core/utils/functions/build_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.padding = const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      this.maxlines = 1,
      this.onChanged,
      this.onSaved});

  final String hintText;
  final int maxlines;
  final EdgeInsets padding;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      textInputAction: TextInputAction.next,
      onSaved: onSaved,
      onChanged: onChanged,
      cursorColor: Colors.white,
      autofocus: false,
      textAlign: TextAlign.start,
      maxLines: maxlines,
      decoration: InputDecoration(
        contentPadding: padding,
        hintText: hintText,
        hintStyle: GoogleFonts.poppins(fontSize: 16),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(Colors.white),
        border: buildBorder(),
      ),
    );
  }
}
