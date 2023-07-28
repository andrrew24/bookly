import 'package:bookly/core/utils/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';

class NewestBookShimmerItem extends StatelessWidget {
  const NewestBookShimmerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20,vertical: 3),
      child: Row(
        children: [
          ShimmerWidget.rectangular(height: 160, width: 85, shapeBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          )),
         const SizedBox(width: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerWidget.rectangular(height: 20, width: 180, shapeBorder:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)) ),
           const SizedBox(height: 5,),
            ShimmerWidget.rectangular(height: 20, width: 140, shapeBorder:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)) ),
            const SizedBox(height: 5,),
            ShimmerWidget.rectangular(height: 20, width: 100, shapeBorder:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)) ),
            const SizedBox(height: 5,),
            Row(
              children: [
                ShimmerWidget.rectangular(height: 20, width: 80, shapeBorder:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)) ),
               const SizedBox(
                  width: 40,
                ),
                ShimmerWidget.rectangular(height: 20, width: 60, shapeBorder:RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)) )
              ],
            )
          ],
        )
       
        ],
      ),
    );
  }
}