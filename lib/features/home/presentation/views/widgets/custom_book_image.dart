import 'package:bookly/core/utils/app_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .38,
        child: AspectRatio(
          aspectRatio: 2.3 / 4,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                image:
                    DecorationImage(image: AssetImage(Assets.imagesTestImage))),
          ),
        ),
      ),
    );
  }
}
