import 'package:bloc/bloc.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepoImp) : super(SearchInitial());

  final SearchRepoImp searchRepoImp;

  Future<void> getSearchedBook({required String bookName}) async {
    emit(SearchLoading());
    var result = await searchRepoImp.fetchSearchedBook(bookName: bookName);
    result.fold((failure) => emit(SearchFailed(failure.errorName)),
        (books) => emit(SearchSuccess(books)));
  }
}
