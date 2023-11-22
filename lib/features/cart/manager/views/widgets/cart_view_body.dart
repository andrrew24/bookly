import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/widgets/custom_app_bar_book_details.dart';
import '../../cart_cubit/cart_cubit.dart';
import 'cart_books_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomAppBar(
            leadIcon: const Icon(FontAwesomeIcons.xmark),
            leadOnPressed: () => GoRouter.of(context).pop(),
            trailIcon: const Icon(FontAwesomeIcons.trash),
            trailOnPressed: () =>
                BlocProvider.of<CartCubit>(context).clearBooks(),
          ),
        ),
       const SizedBox(
          height: 25,
        ),
       const CartBooksList(),
      ],
    );
  }
}


