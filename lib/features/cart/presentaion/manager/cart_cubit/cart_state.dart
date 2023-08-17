// ignore_for_file: prefer_const_constructors_in_immutables

part of 'cart_cubit.dart';

sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}

final class CartClearBooks extends CartState {
  final List<BookModel> books;
  CartClearBooks(this.books);
}

final class CartLoaded extends CartState {
  final List<BookModel> books;
  CartLoaded(this.books);
}
