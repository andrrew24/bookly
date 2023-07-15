
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child:  Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
          const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 16,),
                 const SizedBox(
         width: 10,
       ),
      Text("4.9",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
       const SizedBox(
         width: 5,
       ),
      Text("(2393)",style: Styles.textStyle14.copyWith(color: Colors.grey),)
       ],
      ),
    );
  }
}