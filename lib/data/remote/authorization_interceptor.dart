// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movieflix/repository/shared_prefs_data_source.dart';

@injectable
class AuthorizationInterceptor extends Interceptor {
  final String apiKey = 'a7ca42bea18eaea582f7d11dde07805e';

  final SharedPrefs sharedPrefs;
  AuthorizationInterceptor({required this.sharedPrefs});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.queryParameters.addAll({
      API_KEY: apiKey,
      REQUEST_TOKEN: await sharedPrefs.getToken(),
      SESSION_ID: await sharedPrefs.getSessionId(),
    });
    super.onRequest(options, handler);
  }

  final API_KEY = "api_key";
  final REQUEST_TOKEN = "request_token";
  final SESSION_ID = "session_id";
}
