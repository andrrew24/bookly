import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'similar_books.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "You may also like",
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SimilarBooks(),
      ],
    );
  }
}
