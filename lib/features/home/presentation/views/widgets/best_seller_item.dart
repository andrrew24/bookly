import 'package:bookly/core/utils/app_image.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'rating_widget.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushReplacement(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: AspectRatio(
                aspectRatio: 2.3 / 4,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: AssetImage(Assets.imagesTestImage))),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "The Jungel Book",
                      style: Styles.headLines,
                      maxLines: 2,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Budyard kipling",
                  style: Styles.smallheadLines,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "19.99€",
                      style: Styles.headLines
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const RatingWidget(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
