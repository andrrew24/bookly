import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const BookItemWidget(
          title: "Book",
          author: "Book",
          imageUrl: kDefaultImageLink,
          averageRating: 0,
          ratingCount: 0,
        );
      },
    );
  }
}
