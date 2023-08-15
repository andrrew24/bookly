import 'package:bloc/bloc.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> getSimilarBooks({required String categoty}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: categoty);
    result.fold((failure) {
      emit(SimilarBooksFailed(failure.errorName));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
