import 'package:injectable/injectable.dart';
import 'package:movieflix/repository/shared_prefs.dart';
import 'package:movieflix/data/local/shared_prefs_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPrefsModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences async =>
      await SharedPreferences.getInstance();

  @lazySingleton
  SharedPrefs getSharedPrefs(SharedPreferences sharedPreferences) =>
      SharedPrefsImpl(sharedPreferences);
}
