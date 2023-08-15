import 'package:bookly/core/utils/app_image.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 20, child: Image.asset(Assets.imagesLogo)),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSearchView);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20,
                    color: Colors.white,
                  )),
                  IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kCartView);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.cartShopping,
                    size: 20,
                    color: Colors.white,
                  )),
            ],
          ),

        ],
      ),
    );
  }
}
