import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/cart/presentaion/manager/cart_cubit/cart_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            padding: const EdgeInsets.only(left: 15),
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state is CartLoaded) {
                  return ListView.builder(
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      return BookItemWidget(bookModel: state.books[(state.books.length - 1) - index]);
                    },
                  );
                } else if (state is CartClearBooks) {
                  return ListView.builder(
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      return BookItemWidget(bookModel: state.books[(state.books.length - 1) - index]);
                    },
                  );
                } else {
                  return const CustomErrorWid(text: "List is Empty");
                }
              },
            )));
  }
}


// BlocBuilder<CartCubit, CartState>(builder: (context, state) {
      //   if (state is CartUpdated) {
      //     return ListView.builder(
      //       itemCount: state.books.length,
      //       itemBuilder: (context, index) {
      //         return BookItemWidget(bookModel: state.books[index]);
      //       },
      //     );
      //   } else {
      //     return const CustomErrorWid(text: "Add Your Favorite Books Here ♥");
      //   }
      // }),