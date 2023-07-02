import 'package:movieflix/domain/entity/review_entity.dart';
import 'package:movieflix/domain/entity/series/episode_entity.dart';
import 'package:movieflix/domain/entity/series/season_entity.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';
import 'package:movieflix/domain/entity/trailer_entity.dart';
import 'package:movieflix/domain/repository/series_repository.dart';
import 'package:movieflix/repository/local_data_source.dart';
import 'package:movieflix/repository/remote_data_source.dart';

class SeriesRepositoryImpl implements SeriesRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  SeriesRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<SeriesEntity>> getPopularSeries({int? page}) async {
    return remoteDataSource.getPopularSeries(page).toEntity();
  }

  @override
  Future<List<SeriesEntity>> getTopRatedSeries({int? page}) async {
    return remoteDataSource.getTopRatedSeries(page).toEntity();
  }

  @override
  Future<List<SeriesEntity>> getOnTheAirSeries({int? page}) async {
    return remoteDataSource.getOnTheAirSeries(page).toEntity();
  }

  @override
  Future<List<SeriesEntity>> getAiringTodaySeries({int? page}) async {
    return remoteDataSource.getAiringTodaySeries(page).toEntity();
  }

  @override
  Future<List<SeriesEntity>> getSeriesRecommendations(int seriesId,
      {int? page}) async {
    return remoteDataSource.getSeriesRecommendations(seriesId, page).toEntity();
  }

  @override
  Future<SeriesEntity> getLatestSeries() async {
    return remoteDataSource.getLatestSeries().toEntity();
  }

  @override
  Future<List<String>> getSeriesKeywords(int seriesId) async {
    return remoteDataSource.getSeriesKeywords(seriesId).toEntity();
  }

  @override
  Future<List<ReviewEntity>> getSeriesReviews(int seriesId, {int? page}) async {
    return remoteDataSource.getSeriesReviews(seriesId, page).toEntity();
  }

  @override
  Future<void> rateSeries(int seriesId, double rate) async {
    remoteDataSource.rateSeries(seriesId, rate);
  }

  @override
  Future<SeasonEntity> getSeasonDetails(int seriesId, int seasonNumber) async {
    return remoteDataSource.getSeasonDetails(seriesId, seasonNumber).toEntity();
  }

  @override
  Future<List<String>> getSeasonImages(int seriesId, int seasonNumber) async {
    return remoteDataSource.getSeasonImages(seriesId, seasonNumber).toEntity();
  }

  @override
  Future<List<TrailerEntity>> getSeriesTrailers(int seriesId) async {
    return remoteDataSource.getSeriesTrailers(seriesId).toEntity();
  }

  @override
  Future<EpisodeEntity> getEpisodeDetails(
      int seriesId, int season, int episode) async {
    return remoteDataSource
        .getEpisodeDetails(seriesId, season, episode)
        .toEntity();
  }

  @override
  Future<List<String>> getEpisodeImages(
      int seriesId, int season, int episode) async {
    return remoteDataSource
        .getEpisodeImages(seriesId, season, episode)
        .toEntity();
  }

  @override
  Future<List<TrailerEntity>> getEpisodeTrailers(
      int seriesId, int season, int episode) async {
    return remoteDataSource
        .getEpisodeTrailers(seriesId, season, episode)
        .toEntity();
  }

  @override
  Future<void> rateEpisode(
      int seriesId, int season, int episode, double rate) async {
    remoteDataSource.rateEpisode(seriesId, season, episode, rate);
  }

  @override
  Future<SeriesEntity> getSeriesDetails(int seriesId) async {
    return remoteDataSource.getSeriesDetails(seriesId).toEntity();
  }

  @override
  Future<List<String>> getSeriesImages(int seriesId) async {
    return remoteDataSource.getSeriesImages(seriesId).toEntity();
  }

  @override
  Future<List<SeriesEntity>> getSimilarSeries(int seriesId, {int? page}) async {
    return remoteDataSource.getSimilarSeries(seriesId, page).toEntity();
  }

  @override
  Stream<List<SeriesEntity>> getLocalPopularSeries() {
    return localDataSource
        .getPopularSeries()
        .map((it) => it.toPopularSeriesEntity());
  }

  @override
  Stream<List<SeriesEntity>> getLocalTopRatedSeries() {
    return localDataSource
        .getTopRatedSeries()
        .map((it) => it.toTopRatedSeriesEntity());
  }

  @override
  Stream<List<SeriesEntity>> getLocalOnTheAirSeries() {
    return localDataSource
        .getOnTheAirSeries()
        .map((it) => it.toOnTheAirSeriesEntity());
  }

  @override
  Stream<List<SeriesEntity>> getLocalAiringTodaySeries() {
    return localDataSource
        .getAiringTodaySeries()
        .map((it) => it.toAiringTodaySeriesEntity());
  }

  @override
  Future<void> cachePopularSeries(List<SeriesEntity> series) async {
    localDataSource.insertPopularSeries(series.toPopularSeriesDto());
  }

  @override
  Future<void> cacheTopRatedSeries(List<SeriesEntity> series) async {
    localDataSource.insertTopRatedSeries(series.toTopRatedSeriesDto());
  }

  @override
  Future<void> cacheOnTheAirSeries(List<SeriesEntity> series) async {
    localDataSource.insertOnTheAirSeries(series.toOnTheAirSeriesDto());
  }

  @override
  Future<void> cacheAiringTodaySeries(List<SeriesEntity> series) async {
    localDataSource.insertAiringTodaySeries(series.toAiringTodaySeriesDto());
  }
}
