import 'package:movieflix/data/local/shared_prefs/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsImpl implements SharedPrefs {
  final SharedPreferences prefs;
  SharedPrefsImpl(this.prefs);

  static const _tokenKey = 'TOKEN';
  static const _sessionIdKey = 'SESSION_ID';

  @override
  Future<void> setToken(String value) async {
    prefs.setString(_tokenKey, value);
  }

  @override
  Future<String?> getToken() async {
    return prefs.getString(_tokenKey);
  }

  @override
  Future<void> setSessionId(String value) async {
    prefs.setString(_sessionIdKey, value);
  }

  @override
  Future<String?> getSessionId() async {
    return prefs.getString(_sessionIdKey);
  }

  @override
  Future<void> clearSessionId() async {
    prefs.remove(_sessionIdKey);
  }
}
