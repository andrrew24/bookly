import 'package:flutter/material.dart';

import 'newest_books_shimmer_item.dart';

class NewestBooksListShimmer extends StatelessWidget {
  const NewestBooksListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.only(bottom:13),
          child:  NewestBookShimmerItem(),
        );
      },
    );
  }
}
