import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:movieflix/data/remote/api_error_handler.dart';
import 'package:movieflix/data/remote/resources/api_response.dart';
import 'package:movieflix/data/remote/tmdb_status_code.dart';
import 'package:movieflix/domain/utils/flix_exception.dart';

class ApiErrorHandlerImpl implements ApiErrorHandler {
  @override
  FlixException getFlixException(DioException dioError) {
    final ApiResponse response = parseErrorBody(dioError.response);
    if (_unauthorizedStatusCodes.contains(response.statusCode)) {
      return Unauthorized();
    } else if (_serverErrorStatusCodes.contains(response.statusCode)) {
      return ServerError();
    } else if (_invalidUsernamePasswordStatusCodes
        .contains(response.statusCode)) {
      return InvalidUsernameOrPassword();
    } else if (response.statusCode == TMDBStatusCode.EMAIL_NOT_VERIFIED.code) {
      return EmailNotVerified();
    } else {
      return Unknown();
    }
  }

  ApiResponse parseErrorBody(Response? errorBody) {
    try {
      return ApiResponse.fromJson(jsonDecode(errorBody!.data));
    } catch (e) {
      rethrow;
    }
  }

  final _unauthorizedStatusCodes = [
    TMDBStatusCode.AUTHENTICATION_FAILED.code,
    TMDBStatusCode.AUTHENTICATION_FAILED_2.code,
    TMDBStatusCode.DEVICE_DENIED.code,
    TMDBStatusCode.SESSION_DENIED.code,
    TMDBStatusCode.ACCOUNT_DISABLED.code,
    TMDBStatusCode.INVALID_TOKEN.code,
    TMDBStatusCode.INSUFFICIENT_PERMISSIONS.code,
    TMDBStatusCode.RESOURCE_PRIVATE.code,
    TMDBStatusCode.INVALID_API_KEY.code,
    TMDBStatusCode.SUSPENDED_API_KEY.code,
    TMDBStatusCode.INVALID_REQUEST_TOKEN.code,
  ];

  final _serverErrorStatusCodes = [
    TMDBStatusCode.SERVICE_OFFLINE.code,
    TMDBStatusCode.INTERNAL_ERROR.code,
    TMDBStatusCode.FAILED.code,
    TMDBStatusCode.BACKEND_TIMEOUT.code,
    TMDBStatusCode.CONNECTION_ERROR.code,
    TMDBStatusCode.INVALID_ID.code,
    TMDBStatusCode.MAINTENANCE_MODE.code,
    TMDBStatusCode.INVALID_INPUT.code,
  ];

  final _invalidUsernamePasswordStatusCodes = [
    TMDBStatusCode.USERNAME_PASSWORD_REQUIRED.code,
    TMDBStatusCode.INVALID_USERNAME_PASSWORD.code,
  ];
}
