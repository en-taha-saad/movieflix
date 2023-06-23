// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movieflix/data/local/shared_prefs/shared_prefs.dart';

@injectable
class AuthorizationInterceptor extends Interceptor {
  final String apiKey = 'de3dec8b67c5d3c973c918a22ce22801';
  final String requestToken = 'a51ec6b4ab63609f93b341bbd360ea893e34752b';
  final String sessionId = '028a147d7dcfdb39b4f273f89c83a6a888c14636';

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
