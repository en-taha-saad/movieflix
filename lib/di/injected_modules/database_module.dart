import 'package:injectable/injectable.dart';
import 'package:movieflix/data/local/database/app_database.dart';
import 'package:movieflix/data/local/database/dao/movie_dao.dart';
import 'package:movieflix/data/local/database/dao/series_dao.dart';
import 'package:movieflix/data/local/database/dao/user_dao.dart';

@module
abstract class DatabaseModule {
  @lazySingleton
  AppDatabase get appDatabase => AppDatabase(databaseName: "FLIX_DATABASE");

  @lazySingleton
  MovieDao get movieDao => appDatabase.movieDao();

  @lazySingleton
  SeriesDao get seriesDao => appDatabase.seriesDao();

  @lazySingleton
  UserDao get userDao => appDatabase.userDao();
}

