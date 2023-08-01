import 'package:bookly/core/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:either_dart/either.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBook({String bookName});
}
