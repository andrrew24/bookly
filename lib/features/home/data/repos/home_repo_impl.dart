import 'package:bookly/constants.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';

class HomeRepoImp extends HomeRepo {
  late ApiService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endpoint: kNewestEndPoint);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errorName: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
   try {
      var data = await apiService.get(endpoint: kFeaturedEndPoint);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(item);
      }
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
