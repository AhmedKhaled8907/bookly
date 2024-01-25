import 'package:dartz/dartz.dart';

import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks();
}
