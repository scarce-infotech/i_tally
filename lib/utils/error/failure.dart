import 'package:dio/dio.dart';
import 'package:i_tally/utils/error/server_error.dart';

class Failure {
  String? message;

  Failure({this.message});

  Failure.fromServerError(DioError? error) {
    message = ServerError(error).message;
  }
}
