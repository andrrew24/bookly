import 'package:bookly/features/home/presentation/views/widgets/home_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_item_list.dart';
import 'package:flutter/material.dart';

class FeaturedBooksSection extends StatelessWidget {
  const FeaturedBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            HomeAppBar(),
            FeaturedItemList(),
          ],
        ),
      ),
    ]));
  }
}
