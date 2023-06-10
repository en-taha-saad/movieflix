import 'package:floor/floor.dart';
import "package:movieflix/data/local/database/entity/movies_dtos/now_playing_movie_dto.dart";
import "package:movieflix/data/local/database/entity/movies_dtos/popular_movie_dto.dart";
import "package:movieflix/data/local/database/entity/movies_dtos/top_rated_movies_dto.dart";
import "package:movieflix/data/local/database/entity/movies_dtos/upcoming_movies_dto.dart";

@dao
abstract class MovieDao {
  @insert
  Future<void> insertPopularMovies(List<PopularMovieDto> popularMovies);

  @insert
  Future<void> insertTopRatedMovies(List<TopRatedMovieDto> topRatedMovies);

  @insert
  Future<void> insertNowPlayingMovies(
    List<NowPlayingMovieDto> nowPlayingMovies,
  );

  @insert
  Future<void> insertUpcomingMovies(List<UpcomingMovieDto> upcomingMovies);

  @Query('SELECT * FROM POPULAR_MOVIES')
  Future<List<PopularMovieDto>> getPopularMovies();

  @Query('SELECT * FROM TOP_RATED_MOVIES')
  Future<List<TopRatedMovieDto>> getTopRatedMovies();

  @Query('SELECT * FROM NOW_PLAYING_MOVIES')
  Future<List<NowPlayingMovieDto>> getNowPlayingMovies();

  @Query('SELECT * FROM UPCOMING_MOVIES')
  Future<List<UpcomingMovieDto>> getUpcomingMovies();
}
