// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movieflix/data/local/database/app_database.dart' as _i4;
import 'package:movieflix/data/local/database/dao/movie_dao.dart' as _i6;
import 'package:movieflix/data/local/database/dao/series_dao.dart' as _i7;
import 'package:movieflix/data/local/database/dao/user_dao.dart' as _i11;
import 'package:movieflix/data/local/local_data_source_imp.dart' as _i15;
import 'package:movieflix/data/local/shared_prefs_imp.dart' as _i10;
import 'package:movieflix/data/remote/api_error_handler.dart' as _i13;
import 'package:movieflix/data/remote/api_error_handler_imp.dart' as _i3;
import 'package:movieflix/data/remote/api_service.dart' as _i12;
import 'package:movieflix/data/remote/authorization_interceptor.dart' as _i14;
import 'package:movieflix/data/remote/remote_data_source_imp.dart' as _i16;
import 'package:movieflix/di/injected_modules/data_source_module.dart' as _i25;
import 'package:movieflix/di/injected_modules/database_module.dart' as _i26;
import 'package:movieflix/di/injected_modules/network_module.dart' as _i28;
import 'package:movieflix/di/injected_modules/repository_module.dart' as _i29;
import 'package:movieflix/di/injected_modules/shared_prefs_module.dart' as _i27;
import 'package:movieflix/domain/repository/movie_repository.dart' as _i24;
import 'package:movieflix/domain/repository/series_repository.dart' as _i22;
import 'package:movieflix/domain/repository/user_repository.dart' as _i23;
import 'package:movieflix/repository/local_data_source.dart' as _i17;
import 'package:movieflix/repository/movie_repository_imp.dart' as _i21;
import 'package:movieflix/repository/remote_data_source.dart' as _i18;
import 'package:movieflix/repository/series_repository_imp.dart' as _i19;
import 'package:movieflix/repository/shared_prefs_data_source.dart' as _i9;
import 'package:movieflix/repository/user_repository_imp.dart' as _i20;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

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
    final dataSourceModule = _$DataSourceModule();
    final repositoryModule = _$RepositoryModule();
    gh.factory<_i3.ApiErrorHandlerImpl>(() => _i3.ApiErrorHandlerImpl());
    await gh.factoryAsync<_i4.AppDatabase>(
      () => databaseModule.appDatabase,
      preResolve: true,
    );
    gh.lazySingleton<_i5.Dio>(() => networkModule.dio);
    gh.singleton<_i6.MovieDao>(
        databaseModule.getMovieDao(gh<_i4.AppDatabase>()));
    gh.singleton<_i7.SeriesDao>(
        databaseModule.getTvShowDao(gh<_i4.AppDatabase>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => sharedPrefsModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i9.SharedPrefs>(
        () => sharedPrefsModule.getSharedPrefs(gh<_i8.SharedPreferences>()));
    gh.factory<_i10.SharedPrefsImpl>(
        () => _i10.SharedPrefsImpl(gh<_i8.SharedPreferences>()));
    gh.singleton<_i11.UserDao>(
        databaseModule.getUserDao(gh<_i4.AppDatabase>()));
    gh.lazySingleton<_i12.APIService>(
        () => networkModule.getAPIService(gh<_i5.Dio>()));
    gh.singleton<_i13.ApiErrorHandler>(
        dataSourceModule.bindAPIErrorHandler(gh<_i3.ApiErrorHandlerImpl>()));
    gh.factory<_i14.AuthorizationInterceptor>(() =>
        _i14.AuthorizationInterceptor(sharedPrefs: gh<_i9.SharedPrefs>()));
    gh.factory<_i15.LocalDataSourceImpl>(() => _i15.LocalDataSourceImpl(
          gh<_i6.MovieDao>(),
          gh<_i11.UserDao>(),
          gh<_i7.SeriesDao>(),
        ));
    gh.factory<_i16.RemoteDataSourceImpl>(() => _i16.RemoteDataSourceImpl(
          gh<_i12.APIService>(),
          gh<_i13.ApiErrorHandler>(),
        ));
    gh.singleton<_i17.LocalDataSource>(
        dataSourceModule.bindLocalDataSource(gh<_i15.LocalDataSourceImpl>()));
    gh.singleton<_i18.RemoteDataSource>(
        dataSourceModule.bindRemoteDataSource(gh<_i16.RemoteDataSourceImpl>()));
    gh.factory<_i19.SeriesRepositoryImpl>(() => _i19.SeriesRepositoryImpl(
          remoteDataSource: gh<_i18.RemoteDataSource>(),
          localDataSource: gh<_i17.LocalDataSource>(),
        ));
    gh.factory<_i20.UserRepositoryImpl>(() => _i20.UserRepositoryImpl(
          remoteDataSource: gh<_i18.RemoteDataSource>(),
          preferencesDataSource: gh<_i9.SharedPrefs>(),
        ));
    gh.factory<_i21.MovieRepositoryImpl>(() => _i21.MovieRepositoryImpl(
          remoteDataSource: gh<_i18.RemoteDataSource>(),
          localDataSource: gh<_i17.LocalDataSource>(),
        ));
    gh.singleton<_i22.SeriesRepository>(
        repositoryModule.bindSeriesRepository(gh<_i19.SeriesRepositoryImpl>()));
    gh.singleton<_i23.UserRepository>(
        repositoryModule.bindUserRepository(gh<_i20.UserRepositoryImpl>()));
    gh.singleton<_i24.MovieRepository>(
        repositoryModule.bindMoviesRepository(gh<_i21.MovieRepositoryImpl>()));
    return this;
  }
}

class _$DataSourceModule extends _i25.DataSourceModule {}

class _$DatabaseModule extends _i26.DatabaseModule {}

class _$SharedPrefsModule extends _i27.SharedPrefsModule {}

class _$NetworkModule extends _i28.NetworkModule {}

class _$RepositoryModule extends _i29.RepositoryModule {}
