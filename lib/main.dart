import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/splash/presentaion/views/splash.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor,textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      home: const SplashView(),
    );
  }
}
