import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_section.dart';
import 'package:flutter/material.dart';

import 'featured_books_section.dart';
import 'newest_books_list.dart';
import 'custom_appbar.dart';
import 'featured_item_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        FeaturedBooksSection(),
        NewestBooksSection()
      ],
    );
  }
}
