import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar_book_details.dart';
import 'details_page_action_button.dart';
import 'similar_books.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomAppBarBookDetails(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .24),
                    child: const CustomBookImage(),
                  ),
                  const Text(
                    "The Jungle Book",
                    style: Styles.textStyle30,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Rudyard kipling",
                    style: Styles.textStyle18,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const RatingWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  const DetailsPageActionButton(),
                  const Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "You may also like",
                          style: Styles.textStyle18,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SimilarBooks(),
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
