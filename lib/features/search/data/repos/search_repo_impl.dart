import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService apiService;

  SearchRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBook(
      {required String bookName}) async {
    try {
      // Step 1 get the data
      var data = await apiService.get(
          endpoint:
              "volumes?Filtering=free-ebooks&Sorting=relevance &q=$bookName");
      // Step 2 initialize an empty list of book Model
      List<BookModel> books = [];

      // Step 3 add every book in items in books List

      for (var item in data['items']) {
        // add and parse the recieved book moodel from the data

        try {
          books.add(BookModel.fromJson(item));
        } on Exception catch (e) {
          throw Exception(e.toString());
        }
      }
      // return books
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errorName: e.toString()));
      }
    }
  }
}
