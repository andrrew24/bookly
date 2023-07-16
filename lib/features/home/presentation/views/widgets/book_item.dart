import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_image.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'rating_widget.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushReplacement(AppRouter.kBookDetailsView);
      },
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: AspectRatio(
              aspectRatio: 2.4 / 4,
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
                    style: Styles.textStyle20.copyWith(fontFamily: kfontFamily),
                    maxLines: 2,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Budyard kipling",
                style: Styles.textStyle16,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "19.99€",
                    style: Styles.textStyle20
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
    );
  }
}
