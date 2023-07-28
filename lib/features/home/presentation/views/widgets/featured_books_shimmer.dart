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
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            ShimmerWidget.rectangular(height: 100, width: 150,shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),),
           const SizedBox(
              width: 10,
            ),
            ShimmerWidget.rectangular(height: 100, width: 150,shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),),
           const   SizedBox(
              width: 10,
            ),
            ShimmerWidget.rectangular(height: 100, width: 150,shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),),
          ],
        ),
      ),
    );
  }
}