
import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'featured_item_list.dart';


class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [CustomAppBar(),
          FeaturedItemList()
          ]),
    );
  }
}

