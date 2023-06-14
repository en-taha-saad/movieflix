// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movieflix/data/local/shared_prefs/shared_prefs.dart';

@injectable
class AuthorizationInterceptor extends Interceptor {
  final String apiKey = '53a49b10cd4a582cc2602fcaa8b4b102';
  final SharedPrefs sharedPrefs;
  AuthorizationInterceptor({required this.sharedPrefs});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      API_KEY: apiKey,
      REQUEST_TOKEN: sharedPrefs.getToken(),
      SESSION_ID: sharedPrefs.getSessionId(),
    });
    super.onRequest(options, handler);
  }

  final API_KEY = "api_key";
  final REQUEST_TOKEN = "request_token";
  final SESSION_ID = "session_id";
}
