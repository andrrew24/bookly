// ignore_for_file: prefer_const_constructors_in_immutables

part of 'cart_cubit.dart';

sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}

final class CartUpdated extends CartState {
  final List<BookModel> books;
  CartUpdated(this.books);
}
