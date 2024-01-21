import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDiaError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with the Api Server');
      case DioExceptionType.cancel:
        return ServerFailure('Connection timeout with the Api Server');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with the Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with the Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with the Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadRespone(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Something wrong happended , please try again later!');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
    }
    return ServerFailure('Something wrong happended , please try again later!');
  }

  factory ServerFailure.fromBadRespone(int statesCode, dynamic response) {
    if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statesCode == 404) {
      return ServerFailure('Not Found');
    } else {
      return ServerFailure(
          'Something wrong happended , please try again later!');
    }
  }
}
