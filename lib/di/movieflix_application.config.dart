// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movieflix/data/local/database/app_database.dart' as _i5;
import 'package:movieflix/data/local/database/dao/movie_dao.dart' as _i7;
import 'package:movieflix/data/local/database/dao/series_dao.dart' as _i8;
import 'package:movieflix/data/local/database/dao/user_dao.dart' as _i12;
import 'package:movieflix/data/local/local_data_source_imp.dart' as _i15;
import 'package:movieflix/data/local/preference_data_source_imp.dart' as _i16;
import 'package:movieflix/data/local/shared_prefs/shared_prefs.dart' as _i10;
import 'package:movieflix/data/local/shared_prefs/shared_prefs_imp.dart'
    as _i11;
import 'package:movieflix/data/remote/api_error_handler.dart' as _i13;
import 'package:movieflix/data/remote/api_error_handler_imp.dart' as _i4;
import 'package:movieflix/data/remote/api_service.dart' as _i3;
import 'package:movieflix/data/remote/authorization_interceptor.dart' as _i14;
import 'package:movieflix/data/remote/remote_data_source_imp.dart' as _i17;
import 'package:movieflix/di/injected_modules/data_source_module.dart' as _i24;
import 'package:movieflix/di/injected_modules/database_module.dart' as _i21;
import 'package:movieflix/di/injected_modules/network_module.dart' as _i23;
import 'package:movieflix/di/injected_modules/shared_prefs_module.dart' as _i22;
import 'package:movieflix/repository/local_data_source.dart' as _i18;
import 'package:movieflix/repository/preference_data_source.dart' as _i19;
import 'package:movieflix/repository/remote_data_source.dart' as _i20;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

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
    final networkModule = _$NetworkModule();
    final databaseModule = _$DatabaseModule();
    final sharedPrefsModule = _$SharedPrefsModule();
    final dataSourceModule = _$DataSourceModule();
    gh.lazySingleton<_i3.APIService>(() => networkModule.apiService);
    gh.factory<_i4.ApiErrorHandlerImpl>(() => _i4.ApiErrorHandlerImpl());
    await gh.factoryAsync<_i5.AppDatabase>(
      () => databaseModule.appDatabase,
      preResolve: true,
    );
    gh.lazySingleton<_i6.Dio>(() => networkModule.dio);
    gh.singleton<_i7.MovieDao>(
        databaseModule.getMovieDao(gh<_i5.AppDatabase>()));
    gh.singleton<_i8.SeriesDao>(
        databaseModule.getTvShowDao(gh<_i5.AppDatabase>()));
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => sharedPrefsModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i10.SharedPrefs>(
        () => sharedPrefsModule.getSharedPrefs(gh<_i9.SharedPreferences>()));
    gh.factory<_i11.SharedPrefsImpl>(
        () => _i11.SharedPrefsImpl(gh<_i9.SharedPreferences>()));
    gh.singleton<_i12.UserDao>(
        databaseModule.getUserDao(gh<_i5.AppDatabase>()));
    gh.singleton<_i13.ApiErrorHandler>(
        dataSourceModule.bindAPIErrorHandler(gh<_i4.ApiErrorHandlerImpl>()));
    gh.factory<_i14.AuthorizationInterceptor>(() =>
        _i14.AuthorizationInterceptor(sharedPrefs: gh<_i10.SharedPrefs>()));
    gh.factory<_i15.LocalDataSourceImpl>(() => _i15.LocalDataSourceImpl(
          gh<_i7.MovieDao>(),
          gh<_i12.UserDao>(),
          gh<_i8.SeriesDao>(),
        ));
    gh.factory<_i16.PreferencesDataSourceImpl>(
        () => _i16.PreferencesDataSourceImpl(gh<_i9.SharedPreferences>()));
    gh.factory<_i17.RemoteDataSourceImpl>(() => _i17.RemoteDataSourceImpl(
          gh<_i3.APIService>(),
          gh<_i13.ApiErrorHandler>(),
        ));
    gh.singleton<_i18.LocalDataSource>(
        dataSourceModule.bindLocalDataSource(gh<_i15.LocalDataSourceImpl>()));
    gh.singleton<_i19.PreferencesDataSource>(dataSourceModule
        .bindPreferencesDataSource(gh<_i16.PreferencesDataSourceImpl>()));
    gh.singleton<_i20.RemoteDataSource>(
        dataSourceModule.bindRemoteDataSource(gh<_i17.RemoteDataSourceImpl>()));
    return this;
  }
}

class _$DatabaseModule extends _i21.DatabaseModule {}

class _$SharedPrefsModule extends _i22.SharedPrefsModule {}

class _$NetworkModule extends _i23.NetworkModule {}

class _$DataSourceModule extends _i24.DataSourceModule {}
