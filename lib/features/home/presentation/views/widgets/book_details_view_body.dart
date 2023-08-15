import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'book_details_section.dart';
import '../../../../../core/utils/widgets/custom_app_bar_book_details.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomAppBar(
                      leadIcon: const Icon(FontAwesomeIcons.xmark),
                      leadOnPressed: () => GoRouter.of(context).pushReplacement(AppRouter.kHomeView),
                      trailIcon: const Icon(FontAwesomeIcons.cartShopping),
                      trailOnPressed: () => GoRouter.of(context).push(AppRouter.kCartView),
                    ),
                  ),
                  BookDetailsSection(
                    bookModel: bookModel,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  const SimilarBooksSection(),
                  const SizedBox(
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
