import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomAppBarBookDetails(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .23),
              child: const CustomBookImage(),
            ),
          ],
        ),
      ),
    );
  }
}
