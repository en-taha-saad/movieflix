import 'package:movieflix/data/local/shared_prefs/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsImpl implements SharedPrefs {
  static const _tokenKey = 'TOKEN';
  static const _sessionIdKey = 'SESSION_ID';

  @override
  Future<void> setToken(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_tokenKey, value);
  }

  @override
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  @override
  Future<void> setSessionId(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_sessionIdKey, value);
  }

  @override
  Future<String?> getSessionId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_sessionIdKey);
  }

  @override
  Future<void> clearSessionId() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_sessionIdKey);
  }
}
