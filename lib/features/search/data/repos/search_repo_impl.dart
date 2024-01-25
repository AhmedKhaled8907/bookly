import 'package:bookly/Features/search/data/repos/search_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';

final class SearchRepoImpl extends SearchRepo {
  SearchRepoImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks() async {
    const String endPoint = 'volumes?Filtering=free-ebooks&q=subject:anime';

    try {
      final data = await apiService.get(endPoint: endPoint);

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiaError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
