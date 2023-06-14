import 'package:injectable/injectable.dart';
import 'package:movieflix/repository/preference_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class PreferencesDataSourceImpl implements PreferencesDataSource {
  final SharedPreferences prefs;

  PreferencesDataSourceImpl(this.prefs);

  @override
  Future<void> saveRequestToken(String requestToken) async {
    await prefs.setString('requestToken', requestToken);
  }

  @override
  Future<void> saveSessionId(String sessionId) async {
    await prefs.setString('sessionId', sessionId);
  }

  @override
  String? getRequestToken() {
    return prefs.getString('requestToken');
  }

  @override
  String? getSessionId() {
    return prefs.getString('sessionId');
  }

  @override
  Future<void> clearSession() async {
    await prefs.remove('sessionId');
  }

  @override
  Future<bool> isUserLoggedIn() async {
    final sessionId = prefs.getString('sessionId');
    return sessionId != null;
  }
}
