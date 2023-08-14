import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_section.dart';
import 'package:flutter/material.dart';

import 'featured_books_section.dart';

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
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Newest Books",style: Styles.textStyle20,),
          ),
        ),
        NewestBooksSection()
      ],
    );
  }
}
