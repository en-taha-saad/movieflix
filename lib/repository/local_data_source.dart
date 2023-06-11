import 'package:movieflix/data/local/database/entity/movies_dtos/now_playing_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/popular_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/top_rated_movies_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/upcoming_movies_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/airing_today_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/on_the_air_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/popular_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/top_rated_series_dto.dart';
import 'package:movieflix/data/local/database/entity/user_dto.dart';

abstract class LocalDataSource {
  Future<List<PopularMovieDto>> getPopularMovies();
  Future<List<TopRatedMovieDto>> getTopRatedMovies();
  Future<List<NowPlayingMovieDto>> getNowPlayingMovies();
  Future<List<UpcomingMovieDto>> getUpcomingMovies();
  insertPopularMovies(List<PopularMovieDto> popularMovies);
  insertTopRatedMovies(List<TopRatedMovieDto> topRatedMovies);
  insertNowPlayingMovies(List<NowPlayingMovieDto> nowPlayingMovies);
  insertUpcomingMovies(List<UpcomingMovieDto> upcomingMovies);

  Future<List<PopularSeriesDto>> getPopularSeries();
  Future<List<TopRatedSeriesDto>> getTopRatedSeries();
  Future<List<OnTheAirSeriesDto>> getOnTheAirSeries();
  Future<List<AiringTodaySeriesDto>> getAiringTodaySeries();
  insertPopularSeries(List<PopularSeriesDto> popularSeries);
  insertTopRatedSeries(List<TopRatedSeriesDto> topRatedSeries);
  insertOnTheAirSeries(List<OnTheAirSeriesDto> nowPlayingSeries);
  insertAiringTodaySeries(List<AiringTodaySeriesDto> upcomingSeries);

  Future<UserDto?> getUserData();
  insertUserData(UserDto userDto);
}
