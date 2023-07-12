
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static final titleMedium = GoogleFonts.abel(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final headLines = GoogleFonts.frankRuhlLibre(
    fontSize: 20,
    fontWeight: FontWeight.bold
  );

  static final smallheadLines = GoogleFonts.montserrat(
      fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey);
}
