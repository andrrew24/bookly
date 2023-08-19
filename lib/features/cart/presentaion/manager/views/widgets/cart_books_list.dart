import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/cart/presentaion/manager/cart_cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'slidabel_book_item.dart';

class CartBooksList extends StatelessWidget {
  const CartBooksList({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state is CartUpdated) {
                  if (state.books.isNotEmpty) {
                    return ListView.builder(
                      itemCount: state.books.length,
                      itemBuilder: (context, index) {
                        return SlidableBookItem(
                          bookModel:
                              state.books[(state.books.length - 1) - index],
                        );
                      },
                    );
                  } else {
                    return const Center(
                        child: CustomErrorWid(
                            text: "The List is Empty"));
                  }
                } else {
                  return const Center(
                      child: CustomErrorWid(
                          text: "Add Your Favorite Books Here ♥"));
                }
              },
            )));
  }
}


