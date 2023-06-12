// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../data/local/database/app_database.dart' as _i3;
import '../data/local/database/dao/movie_dao.dart' as _i5;
import '../data/local/database/dao/series_dao.dart' as _i6;
import '../data/local/database/dao/user_dao.dart' as _i9;
import '../data/local/shared_prefs/shared_prefs.dart' as _i8;
import '../data/remote/authorization_interceptor.dart' as _i10;
import 'injected_modules/database_module.dart' as _i11;
import 'injected_modules/network_module.dart' as _i13;
import 'injected_modules/shared_prefs_module.dart' as _i12;

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
    final networkModule = _$NetworkModule();
    final sharedPrefsModule = _$SharedPrefsModule();
    await gh.factoryAsync<_i3.AppDatabase>(
      () => databaseModule.appDatabase,
      preResolve: true,
    );
    gh.lazySingleton<_i4.Dio>(() => networkModule.dio);
    gh.singleton<_i5.MovieDao>(
        databaseModule.getMovieDao(gh<_i3.AppDatabase>()));
    gh.singleton<_i6.SeriesDao>(
        databaseModule.getTvShowDao(gh<_i3.AppDatabase>()));
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => sharedPrefsModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i8.SharedPrefs>(
        () => sharedPrefsModule.getSharedPrefs(gh<_i7.SharedPreferences>()));
    gh.singleton<_i9.UserDao>(databaseModule.getUserDao(gh<_i3.AppDatabase>()));
    gh.factory<_i10.AuthorizationInterceptor>(() =>
        _i10.AuthorizationInterceptor(sharedPrefs: gh<_i8.SharedPrefs>()));
    return this;
  }
}

class _$DatabaseModule extends _i11.DatabaseModule {}

class _$SharedPrefsModule extends _i12.SharedPrefsModule {}

class _$NetworkModule extends _i13.NetworkModule {}
