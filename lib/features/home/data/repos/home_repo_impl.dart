import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';

import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl(this.apiService);

  final ApiService apiService;
  

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks()async {
  
    const String endPoint = 'volumes?Filtering=free-ebooks&q=subject: programming&Sorting=newest ';

    try {
  final data = await apiService.get(endPoint: endPoint);

  List<BookModel> books =[];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }

  return right(books);
} catch (e) {
  return left(ServerFailure());
}
    
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    ApiService
  }
}
