import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
        SliverToBoxAdapter(
          child:
              Padding(  
                padding: EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          CustomAppBar(),
                          FeaturedItemList(),
                          Padding(
                padding: EdgeInsets.only(top: 10, left: 22,bottom: 10),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle20,
                ),
                          ),
                        ]),
              ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:10),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
