import 'package:bookly/core/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class CustomVerticalBooksList extends StatelessWidget {
  const CustomVerticalBooksList({
    super.key, required this.listCount, required this.books,
  });

  final int listCount;
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: listCount,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15),
          child: BookItemWidget(bookModel: books[index]),
        );
      },
    ));
  }
}