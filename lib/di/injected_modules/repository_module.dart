import 'package:injectable/injectable.dart';
import 'package:movieflix/domain/repository/movie_repository.dart';
import 'package:movieflix/domain/repository/series_repository.dart';
import 'package:movieflix/domain/repository/user_repository.dart';
import 'package:movieflix/repository/movie_repository_imp.dart';
import 'package:movieflix/repository/series_repository_imp.dart';
import 'package:movieflix/repository/user_repository_imp.dart';

@module
abstract class RepositoryModule {
  @singleton
  MovieRepository bindMoviesRepository(
          MovieRepositoryImpl moviesRepositoryImpl) =>
      moviesRepositoryImpl;

  @singleton
  SeriesRepository bindSeriesRepository(
          SeriesRepositoryImpl seriesRepositoryImpl) =>
      seriesRepositoryImpl;

  @singleton
  UserRepository bindUserRepository(UserRepositoryImpl userRepositoryImp) =>
      userRepositoryImp;
}
