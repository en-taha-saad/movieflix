import 'package:movieflix/data/local/database/dao/movie_dao.dart';
import 'package:movieflix/data/local/database/dao/series_dao.dart';
import 'package:movieflix/data/local/database/dao/user_dao.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/now_playing_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/popular_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/top_rated_movies_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/upcoming_movies_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/airing_today_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/on_the_air_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/popular_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/top_rated_series_dto.dart';
import 'package:movieflix/data/local/database/entity/user_dto.dart';
import 'package:movieflix/repository/local_data_source.dart';

class LocalDataSourceImpl implements LocalDataSource {
  final MovieDao movieDao;
  final UserDao userDao;
  final SeriesDao seriesDao;

  LocalDataSourceImpl(this.movieDao, this.userDao, this.seriesDao);

  @override
  Future<List<AiringTodaySeriesDto>> getAiringTodaySeries() {
    return seriesDao.getAiringTodaySeries();
  }

  @override
  Future<List<NowPlayingMovieDto>> getNowPlayingMovies() {
    return movieDao.getNowPlayingMovies();
  }

  @override
  Future<List<OnTheAirSeriesDto>> getOnTheAirSeries() {
    return seriesDao.getOnTheAirSeries();
  }

  @override
  Future<List<PopularMovieDto>> getPopularMovies() {
    return movieDao.getPopularMovies();
  }

  @override
  Future<List<PopularSeriesDto>> getPopularSeries() {
    return seriesDao.getPopularSeries();
  }

  @override
  Future<List<TopRatedMovieDto>> getTopRatedMovies() {
    return movieDao.getTopRatedMovies();
  }

  @override
  Future<List<TopRatedSeriesDto>> getTopRatedSeries() {
    return seriesDao.getTopRatedSeries();
  }

  @override
  Future<List<UpcomingMovieDto>> getUpcomingMovies() {
    return movieDao.getUpcomingMovies();
  }

  @override
  Future<UserDto?> getUserData() {
    return userDao.getUserData();
  }

  @override
  insertAiringTodaySeries(List<AiringTodaySeriesDto> upcomingSeries) {
    return seriesDao.insertAiringTodaySeries(upcomingSeries);
  }

  @override
  insertNowPlayingMovies(List<NowPlayingMovieDto> nowPlayingMovies) {
    return movieDao.insertNowPlayingMovies(nowPlayingMovies);
  }

  @override
  insertOnTheAirSeries(List<OnTheAirSeriesDto> nowPlayingSeries) {
    return seriesDao.insertOnTheAirSeries(nowPlayingSeries);
  }

  @override
  insertPopularMovies(List<PopularMovieDto> popularMovies) {
    return movieDao.insertPopularMovies(popularMovies);
  }

  @override
  insertPopularSeries(List<PopularSeriesDto> popularSeries) {
    return seriesDao.insertPopularSeries(popularSeries);
  }

  @override
  insertTopRatedMovies(List<TopRatedMovieDto> topRatedMovies) {
    return movieDao.insertTopRatedMovies(topRatedMovies);
  }

  @override
  insertTopRatedSeries(List<TopRatedSeriesDto> topRatedSeries) {
    return seriesDao.insertTopRatedSeries(topRatedSeries);
  }

  @override
  insertUpcomingMovies(List<UpcomingMovieDto> upcomingMovies) {
    return movieDao.insertUpcomingMovies(upcomingMovies);
  }

  @override
  insertUserData(UserDto userDto) {
    return userDao.insertUserData(userDto);
  }
}
