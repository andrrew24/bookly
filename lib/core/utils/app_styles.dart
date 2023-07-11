import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static final titleMedium = GoogleFonts.abel(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final headLines = GoogleFonts.aboreto(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white
  );

  static final smallheadLines = GoogleFonts.aboreto(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.grey
  );
}
