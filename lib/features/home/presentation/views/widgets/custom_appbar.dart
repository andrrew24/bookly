import 'package:bookly/core/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20,
            child: Image.asset(Assets.imagesLogo)),
          const IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.magnifyingGlass,size: 20,color: Colors.white,)),
        ],
      ),
    );
  }
}