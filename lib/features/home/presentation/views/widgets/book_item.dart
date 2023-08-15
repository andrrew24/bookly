import 'package:bookly/core/utils/constants.dart';

import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'rating_widget.dart';

class BookItemWidget extends StatelessWidget {
  const BookItemWidget({
    super.key, required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra:bookModel);
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:8.0,),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: AspectRatio(
                  aspectRatio: 2.4 / 4,
                  child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "" )),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo.title ?? "Book",
                    style: Styles.textStyle20.copyWith(fontFamily: kfontFamily),
                    maxLines: 2,
                  )),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  bookModel.volumeInfo.authors == null ? "" :bookModel.volumeInfo.authors![0] ,
                  style: Styles.textStyle16,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Free",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  RatingWidget(
                    averageRating: bookModel.volumeInfo.averageRating?.toDouble() ??
                          0,
                    ratingCount: bookModel.volumeInfo.ratingsCount?.toInt() ?? 0,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
