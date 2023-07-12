import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 20,),
              const SizedBox(
       width: 10,
     ),
    Text("4.9",style: Styles.headLines,),
    const SizedBox(
       width: 5,
     ),
    Text("(2393)",style: Styles.smallheadLines,)
     ],
    );
  }
}