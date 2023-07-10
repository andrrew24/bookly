import 'package:bookly/app_image.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'feautured_item.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child:const  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [  CustomAppBar(),FeauturedItem()]),
    );
  }
}

