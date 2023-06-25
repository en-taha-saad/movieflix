import 'package:movieflix/domain/utils/flix_exception.dart';
import 'package:dio/dio.dart';

abstract class ApiErrorHandler {
  FlixException getFlixException(DioException dioError);
}
