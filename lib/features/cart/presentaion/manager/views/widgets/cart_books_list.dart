import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cart_cubit/cart_cubit.dart';

class CartBooksList extends StatefulWidget {
  const CartBooksList({
    super.key,
  });

  @override
  State<CartBooksList> createState() => _CartBooksListState();
}

class _CartBooksListState extends State<CartBooksList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:15),
        child: ListView.builder(
              itemCount: BlocProvider.of<CartCubit>(context).books.length,
              itemBuilder: (context, index) {
                return BookItemWidget(
                    bookModel: BlocProvider.of<CartCubit>(context).books[(BlocProvider.of<CartCubit>(context).books.length - 1) - index]);
              },
            ),
      ),
    );
  }
}