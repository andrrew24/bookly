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
             if (state is CartUpdated){
                  return ListView.builder(
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      return BookItemWidget(
                          bookModel:
                              state.books[index]);
                    },
                  );
                }else{
                  return ListView.builder(
                    itemCount: BlocProvider.of<CartCubit>(context).books.length,
                    itemBuilder: (context, index) {
                      return BookItemWidget(
                          bookModel:
                              BlocProvider.of<CartCubit>(context).books[index]);
                    },
                  );
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