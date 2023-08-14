import 'package:bookly/core/utils/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListShimmer extends StatelessWidget {
  const FeaturedBooksListShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .28,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ShimmerWidget.rectangular(height: 150, width: 150,shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),),
          ),)
      ),
    );
  }
}