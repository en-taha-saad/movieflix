abstract class SharedPrefs {
  Future<void> setToken(String value);

  Future<String?> getToken();

  Future<void> setSessionId(String value);

  Future<String?> getSessionId();

  Future<void> clearSessionId();

  Future<bool> isUserLoggedIn();

  saveLastCachingTimeStamp(String key, int time);

  int getLastCachingTime(String key);
}
