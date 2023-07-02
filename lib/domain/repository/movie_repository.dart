import 'package:movieflix/domain/entity/movie/movie_entity.dart';
import 'package:movieflix/domain/entity/person_entity.dart';
import 'package:movieflix/domain/entity/review_entity.dart';
import 'package:movieflix/domain/entity/trailer_entity.dart';

abstract class MovieRepository {
  Future<List<MovieEntity>> getPopularMovies({int? page});

  Future<List<MovieEntity>> getUpcomingMovies({int? page});

  Future<List<MovieEntity>> getNowPlayingMovies({int? page});

  Future<List<MovieEntity>> getTopRatedMovies({int? page});

  Future<MovieEntity> getMovieDetails(int movieId);

  Future<List<String>> getMovieKeywords(int movieId);

  Future<List<MovieEntity>> getSimilarMovies(int movieId, {int? page});

  Future<List<TrailerEntity>> getMovieTrailers(int movieId);

  Future<MovieEntity> getLatestMovie();

  Future<List<MovieEntity>> getMovieRecommendations(int movieId, {int? page});

  Future<void> rateMovie(int movieId, double rate);

  Future<void> deleteMovieRating(int movieId);

  Future<List<ReviewEntity>> getMovieReviews(int movieId, {int? page});

  Future<List<MovieEntity>> getMoviesWatchlist({int? page});

  Future<List<MovieEntity>> getFavoriteMovies({int? page});

  Future<List<MovieEntity>> search(String query, {int? page});

  Future<List<PersonEntity>> searchPeople(String query, {int? page});

  Future<List<MovieEntity>> searchMovies(String query, {int? page});

  Future<List<MovieEntity>> getMoviesByKeyword(int keywordId, {int? page});

  Future<List<MovieEntity>> discoverMovies({
    int? page,
    String? sortBy,
    double? rate,
    int? year,
  });

  Stream<List<MovieEntity>> getLocalPopularMovies();

  Stream<List<MovieEntity>> getLocalUpcomingMovies();

  Stream<List<MovieEntity>> getLocalNowPlayingMovies();

  Stream<List<MovieEntity>> getLocalTopRatedMovies();

  Future<void> cachePopularMovies(List<MovieEntity> movies);

  Future<void> cacheUpcomingMovies(List<MovieEntity> movies);

  Future<void> cacheNowPlayingMovies(List<MovieEntity> movies);

  Future<void> cacheTopRatedMovies(List<MovieEntity> movies);
}
