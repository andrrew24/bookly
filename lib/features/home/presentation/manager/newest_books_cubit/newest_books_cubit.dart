import 'package:bloc/bloc.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
        (failure) => emit(NewestBooksFailed(errorName: failure.errorName)),
        (books) => emit(NewestBooksSuccess(books: books)));
  }
}
