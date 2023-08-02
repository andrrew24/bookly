part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

 const FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksFailed extends FeaturedBooksState {
  final String errorName;

  const FeaturedBooksFailed({required this.errorName});
}
