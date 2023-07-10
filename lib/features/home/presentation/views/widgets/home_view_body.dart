import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'featured_item_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const CustomAppBar(),
      const FeaturedItemList(),
      Text(
        "Best Seller",
        textAlign: TextAlign.start,
        style: Styles.titleMedium,
      )
    ]);
  }
}
