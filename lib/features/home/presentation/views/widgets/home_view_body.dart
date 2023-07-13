import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list.dart';
import 'custom_appbar.dart';
import 'featured_item_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const CustomAppBar(),
      const FeaturedItemList(),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
        child: Text(
          "Best Seller",
          style: Styles.titleMedium,
        ),
      ),
    ]),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
