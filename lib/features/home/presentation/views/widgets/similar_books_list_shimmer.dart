import 'package:bookly/core/utils/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

class SimilarBooksListShimmer extends StatelessWidget {
  const SimilarBooksListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: ShimmerWidget.rectangular(height: 80, width: 85,shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),),
          ),)
      ),
    );
  }
}