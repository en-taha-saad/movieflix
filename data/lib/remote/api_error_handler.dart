import 'package:domain/domain.dart';
import 'package:dio/dio.dart';

abstract class ApiErrorHandler {
  FlixException getFlixException(DioException dioError);
}
