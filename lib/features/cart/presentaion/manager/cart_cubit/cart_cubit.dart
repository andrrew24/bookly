import 'package:bloc/bloc.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final List<BookModel> books = [];

  void clearBooks() {
    books.clear();
    emit(CartUpdating());
    emit(CartUpdated(books));
  }

  void deleteBook(BookModel book) {
    books.remove(book);
    emit(CartUpdating());
    emit(CartUpdated(books));
  }

  void addBook(BookModel book) {
    books.add(book);
    emit(CartUpdating());
    emit(CartUpdated(books));
  }
}
