import 'package:injectable/injectable.dart';
import 'package:movieflix/domain/entity/movie/movie_entity.dart';
import 'package:movieflix/domain/entity/person_entity.dart';
import 'package:movieflix/domain/entity/review_entity.dart';
import 'package:movieflix/domain/entity/trailer_entity.dart';
import 'package:movieflix/domain/repository/movie_repository.dart';
import 'package:movieflix/repository/local_data_source.dart';
import 'package:movieflix/repository/mapper/keywords_resource_mapper.dart';
import 'package:movieflix/repository/mapper/movie/movie_dto_mapper.dart';
import 'package:movieflix/repository/mapper/movie/movie_entity_mapper.dart';
import 'package:movieflix/repository/mapper/movie/movie_resource_mapper.dart';
import 'package:movieflix/repository/mapper/review_resource_mapper.dart';
import 'package:movieflix/repository/mapper/trailers_resource_mapper.dart';
import 'package:movieflix/repository/remote_data_source.dart';

import './mapper/person_resource_mapper.dart';

@injectable
class MovieRepositoryImpl implements MovieRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  MovieRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<MovieEntity>> getPopularMovies({int? page}) async {
    final popularMovies = await remoteDataSource.getPopularMovies(page);
    return Future.value(popularMovies.toEntity());
  }

  @override
  Future<List<MovieEntity>> getUpcomingMovies({int? page}) async {
    final upcomingMovies = await remoteDataSource.getUpcomingMovies(page);
    return upcomingMovies.toEntity();
  }

  @override
  Future<List<MovieEntity>> getNowPlayingMovies({int? page}) async {
    final nowPlayingMovies = await remoteDataSource.getNowPlayingMovies(page);
    return nowPlayingMovies.toEntity();
  }

  @override
  Future<List<MovieEntity>> getTopRatedMovies({int? page}) async {
    final topRatedMovies = await remoteDataSource.getTopRatedMovies(page);
    return topRatedMovies.toEntity();
  }

  @override
  Future<MovieEntity> getMovieDetails(int movieId) async {
    final movieDetails = await remoteDataSource.getMovieDetails(movieId);
    return movieDetails.toEntity();
  }

  @override
  Future<List<String>> getMovieKeywords(int movieId) async {
    final movieKeywords = await remoteDataSource.getMovieKeywords(movieId);
    return movieKeywords.toEntity();
  }

  @override
  Future<List<MovieEntity>> getSimilarMovies(int movieId, {int? page}) async {
    final similarMovies =
        await remoteDataSource.getSimilarMovies(movieId, page);
    return similarMovies.toEntity();
  }

  @override
  Future<List<TrailerEntity>> getMovieTrailers(int movieId) async {
    final movieTrailers = await remoteDataSource.getMovieTrailers(movieId);
    return movieTrailers.toEntity();
  }

  @override
  Future<MovieEntity> getLatestMovie() async {
    final latestMovie = await remoteDataSource.getLatestMovie();
    return latestMovie.toEntity();
  }

  @override
  Future<List<MovieEntity>> getMovieRecommendations(int movieId,
      {int? page}) async {
    final recommendations =
        await remoteDataSource.getMovieRecommendations(movieId, page);
    return recommendations.toEntity();
  }

  @override
  Future<void> rateMovie(int movieId, double rate) async {
    await remoteDataSource.rateMovie(movieId, rate);
  }

  @override
  Future<void> deleteMovieRating(int movieId) async {
    await remoteDataSource.deleteMovieRating(movieId);
  }

  @override
  Future<List<ReviewEntity>> getMovieReviews(int movieId, {int? page}) async {
    final movieReviews = await remoteDataSource.getMovieReviews(movieId, page);
    return movieReviews.toEntity();
  }

  @override
  Future<List<MovieEntity>> getMoviesWatchlist({int? page}) async {
    final watchlistMovies = await remoteDataSource.getMoviesWatchlist(page);
    return watchlistMovies.toEntity();
  }

  @override
  Future<List<MovieEntity>> getFavoriteMovies({int? page}) async {
    final favoriteMovies = await remoteDataSource.getFavoriteMovies(page);
    return favoriteMovies.toEntity();
  }

  @override
  Future<List<MovieEntity>> search(String query, {int? page}) async {
    final searchResults = await remoteDataSource.search(query, page);
    return searchResults.toEntity();
  }

  @override
  Future<List<PersonEntity>> searchPeople(String query, {int? page}) async {
    final peopleResults = await remoteDataSource.searchPeople(query, page);
    return peopleResults.toEntity();
  }

  @override
  Future<List<MovieEntity>> searchMovies(String query, {int? page}) async {
    final movieResults = await remoteDataSource.searchMovies(query, page);
    return movieResults.toEntity();
  }

  @override
  Future<List<MovieEntity>> getMoviesByKeyword(int keywordId,
      {int? page}) async {
    final moviesByKeyword =
        await remoteDataSource.getMoviesByKeyword(keywordId, page);
    return moviesByKeyword.toEntity();
  }

  @override
  Future<List<MovieEntity>> discoverMovies({
    int? page,
    String? sortBy,
    double? rate,
    int? year,
  }) async {
    final discoveredMovies =
        await remoteDataSource.discoverMovies(page, sortBy, rate, year);
    return discoveredMovies.toEntity();
  }

  @override
  Stream<List<MovieEntity>> getLocalPopularMovies() {
    return Stream.fromFuture(localDataSource.getPopularMovies())
        .map((movies) => movies.toPopularMoviesEntity());
  }

  @override
  Stream<List<MovieEntity>> getLocalUpcomingMovies() {
    return Stream.fromFuture(localDataSource.getUpcomingMovies())
        .map((movies) => movies.toUpcomingMoviesEntity());
  }

  @override
  Stream<List<MovieEntity>> getLocalNowPlayingMovies() {
    return Stream.fromFuture(localDataSource.getNowPlayingMovies())
        .map((movies) => movies.toNowPlayingMoviesEntity());
  }

  @override
  Stream<List<MovieEntity>> getLocalTopRatedMovies() {
    return Stream.fromFuture(localDataSource.getTopRatedMovies())
        .map((movies) => movies.toTopRatedMoviesEntity());
  }

  @override
  Future<void> cachePopularMovies(List<MovieEntity> movies) async {
    final popularMovieDtos = movies.toPopularMovieDtoList();
    await localDataSource.insertPopularMovies(popularMovieDtos);
  }

  @override
  Future<void> cacheUpcomingMovies(List<MovieEntity> movies) async {
    final upcomingMovieDtos = movies.toUpComingMovieDtoList();
    await localDataSource.insertUpcomingMovies(upcomingMovieDtos);
  }

  @override
  Future<void> cacheNowPlayingMovies(List<MovieEntity> movies) async {
    final nowPlayingMovieDtos = movies.toNowPlayingMovieDtoList();
    await localDataSource.insertNowPlayingMovies(nowPlayingMovieDtos);
  }

  @override
  Future<void> cacheTopRatedMovies(List<MovieEntity> movies) async {
    final topRatedMovieDtos = movies.toTopRatedMovieDtoList();
    await localDataSource.insertTopRatedMovies(topRatedMovieDtos);
  }
}
