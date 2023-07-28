import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double height;
  final double width;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.rectangular(
      {super.key, required this.height, required this.width, required this.shapeBorder});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[100]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.grey[100]!,
          shape: shapeBorder,
        ),
        width: width,
        height: height,
        
      ),
    );
  }
}
