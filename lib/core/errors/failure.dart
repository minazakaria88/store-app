import 'package:dio/dio.dart';

abstract class Failure {
  late final String error;
  Failure(this.error);
}

class ServerFailure extends Failure {
  ServerFailure(super.error);

  factory ServerFailure.dioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Unexpected Error, Please try again!');
      case DioExceptionType.badResponse:
        return ServerFailure('Unexpected Error, Please try again!');
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error, Please try again!');
    }
  }
}
