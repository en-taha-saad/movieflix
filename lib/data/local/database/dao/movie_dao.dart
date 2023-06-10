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

  @Query('SELECT * FROM PopularMovie')
  Future<List<PopularMovieDto>> getPopularMovies();

  @Query('SELECT * FROM TopRatedMovie')
  Future<List<TopRatedMovieDto>> getTopRatedMovies();

  @Query('SELECT * FROM NowPlayingMovie')
  Future<List<NowPlayingMovieDto>> getNowPlayingMovies();

  @Query('SELECT * FROM UpcomingMovie')
  Future<List<UpcomingMovieDto>> getUpcomingMovies();
}
