import 'package:bookly/core/utils/app_image.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 8.0),
      child: Row(
        children: [
          SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: AspectRatio(
            aspectRatio: 2.3/4,
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
       const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text("The Jungel Book" , style: Styles.headLines,),
           const  SizedBox(
              height:10 ,
             ),
             Text("Budyard kipling" , style: Styles.smallheadLines,),
             const  SizedBox(
              height:10 ,
             ),
             Row(
              children: [
                Text("19.99€",style: Styles.headLines,),
                const SizedBox(
                  width: 80,
                ),
               const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 20,),
              const SizedBox(
                  width: 10,
                ),
               Text("4.9",style: Styles.headLines,),
               const SizedBox(
                  width: 10,
                ),
               Text("(2393)",style: Styles.smallheadLines,),
              ],
             )
          ],
        )
      
        ],
      ),
    );
  }
}