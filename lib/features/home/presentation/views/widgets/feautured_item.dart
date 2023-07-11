import 'package:bookly/core/utils/app_image.dart';
import 'package:flutter/material.dart';

class FeauturedItem extends StatelessWidget {
  const FeauturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: AspectRatio(
          aspectRatio: 2.8/4,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(
                  Assets.imagesTestImage
                )
              )
            ),
          ),
        ),
      ),
    );
  }
}