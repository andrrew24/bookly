import 'package:bookly/core/utils/widgets/custom_circular_indicator.dart';
import 'package:bookly/core/utils/widgets/custom_error_wid.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedItemList extends StatelessWidget {
  const FeaturedItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomBookImage();
              },
            ),
          );
        } else if (state is FeaturedBooksFailed) {
          return  CustomErrorWid(
            text: state.errorName,
          );
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}

