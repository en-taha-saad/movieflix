import 'package:injectable/injectable.dart';
import 'package:movieflix/data/local/database/app_database.dart';
import 'package:movieflix/data/local/database/dao/movie_dao.dart';
import 'package:movieflix/data/local/database/dao/series_dao.dart';
import 'package:movieflix/data/local/database/dao/user_dao.dart';

@module
abstract class DatabaseModule {
  @preResolve
  Future<AppDatabase> get appDatabase async =>
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();

  @singleton
  MovieDao getMovieDao(AppDatabase appDatabase) => appDatabase.movieDao;

  @singleton
  SeriesDao getTvShowDao(AppDatabase appDatabase) => appDatabase.seriesDao;

  @singleton
  UserDao getUserDao(AppDatabase appDatabase) => appDatabase.userDao;
}
