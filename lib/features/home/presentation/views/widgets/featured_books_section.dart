import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_item_list.dart';
import 'package:flutter/material.dart';

class FeaturedBooksSection extends StatelessWidget {
  const FeaturedBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate([
      const Column(
        children: [
          CustomAppBar(),
          FeaturedItemList(),
        ],
      ),
    ]));
  }
}
