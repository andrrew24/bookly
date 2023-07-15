import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_app_bar_book_details.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomAppBarBookDetails(),
                  ),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
