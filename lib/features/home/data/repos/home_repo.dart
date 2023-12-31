import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
