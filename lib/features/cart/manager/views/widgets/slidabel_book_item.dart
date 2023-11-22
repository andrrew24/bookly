import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../core/data/book_model/book_model.dart';
import '../../../../home/presentation/views/widgets/book_item.dart';
import '../../cart_cubit/cart_cubit.dart';

class SlidableBookItem extends StatelessWidget {
  const SlidableBookItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            backgroundColor: Colors.red,
            icon: FontAwesomeIcons.trash,
            onPressed: (context) {
              BlocProvider.of<CartCubit>(context).deleteBook(bookModel);
            },
          )
        ]),
        child: BookItemWidget(bookModel: bookModel));
  }
}
