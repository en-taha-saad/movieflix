// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movieflix/data/local/shared_prefs/shared_prefs.dart';

@injectable
class AuthorizationInterceptor extends Interceptor {
  final String apiKey = 'de3dec8b67c5d3c973c918a22ce22801';
  final String requestToken = '55301311c135b5e7cb85f6396e43ecff8a8d0e50';
  final String sessionId = '19fd7a116d1fceca5d7487bd7aa4824297c286c8';

  final SharedPrefs sharedPrefs;
  AuthorizationInterceptor({required this.sharedPrefs});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.queryParameters.addAll({
      API_KEY: apiKey,
      // REQUEST_TOKEN: await sharedPrefs.getToken(),
      // SESSION_ID: await sharedPrefs.getSessionId(),
      REQUEST_TOKEN: requestToken,
      SESSION_ID: sessionId,
    });
    super.onRequest(options, handler);
  }

  final API_KEY = "api_key";
  final REQUEST_TOKEN = "request_token";
  final SESSION_ID = "session_id";
}
