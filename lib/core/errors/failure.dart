import 'package:dio/dio.dart';

abstract class Failure {
  String errorName;

  Failure({required this.errorName});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorName});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorName: "Connection Timeout ");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorName: "Send Timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorName: "Receive Timeout");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorName: "Request was Canceld");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure(errorName: "Please connect to the internet");
        } else {
          return ServerFailure(errorName: "Un Expected Error, try again");
        }
      default:
        return ServerFailure(errorName: "Un Expected Error, try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic reponse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorName: reponse['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errorName: "Method not found");
    } else if (statusCode == 500) {
      return ServerFailure(errorName: "Server is Broke, try again later");
    } else {
      return ServerFailure(errorName: "Oops there was an error $reponse");
    }
  }
}
