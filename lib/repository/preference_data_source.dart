abstract class PreferencesDataSource {
  Future<void> saveRequestToken(String requestToken);
  Future<void> saveSessionId(String sessionId);
  String? getRequestToken();
  String? getSessionId();
  Future<void> clearSession();
  Future<bool> isUserLoggedIn();
}
