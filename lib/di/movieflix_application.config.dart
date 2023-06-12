// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../data/local/database/app_database.dart' as _i3;
import '../data/local/database/dao/movie_dao.dart' as _i4;
import '../data/local/database/dao/series_dao.dart' as _i5;
import '../data/local/database/dao/user_dao.dart' as _i8;
import '../data/local/shared_prefs/shared_prefs.dart' as _i7;
import 'injected_modules/database_module.dart' as _i9;
import 'injected_modules/shared_prefs_module.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final databaseModule = _$DatabaseModule();
    final sharedPrefsModule = _$SharedPrefsModule();
    await gh.factoryAsync<_i3.AppDatabase>(
      () => databaseModule.appDatabase,
      preResolve: true,
    );
    gh.singleton<_i4.MovieDao>(
        databaseModule.getMovieDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i5.SeriesDao>(
        databaseModule.getTvShowDao(gh<_i3.AppDatabase>()));
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => sharedPrefsModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i7.SharedPrefs>(
        () => sharedPrefsModule.getSharedPrefs(gh<_i6.SharedPreferences>()));
    gh.singleton<_i8.UserDao>(databaseModule.getUserDao(gh<_i3.AppDatabase>()));
    return this;
  }
}

class _$DatabaseModule extends _i9.DatabaseModule {}

class _$SharedPrefsModule extends _i10.SharedPrefsModule {}
