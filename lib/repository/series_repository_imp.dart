import 'package:injectable/injectable.dart';
import 'package:movieflix/domain/entity/review_entity.dart';
import 'package:movieflix/domain/entity/series/episode_entity.dart';
import 'package:movieflix/domain/entity/series/season_entity.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';
import 'package:movieflix/domain/entity/trailer_entity.dart';
import 'package:movieflix/domain/repository/series_repository.dart';
import 'package:movieflix/repository/local_data_source.dart';
import 'package:movieflix/repository/mapper/keywords_resource_mapper.dart';
import 'package:movieflix/repository/mapper/review_resource_mapper.dart';
import 'package:movieflix/repository/mapper/series/episode_resource_mapper.dart';
import 'package:movieflix/repository/mapper/series/images_resource_mapper.dart';
import 'package:movieflix/repository/mapper/series/season_resource_mapper.dart';
import 'package:movieflix/repository/mapper/series/series_dto_mapper.dart';
import 'package:movieflix/repository/mapper/series/series_entity_mapper.dart';
import 'package:movieflix/repository/mapper/series/series_resource_mapper.dart';
import 'package:movieflix/repository/mapper/trailers_resource_mapper.dart';
import 'package:movieflix/repository/remote_data_source.dart';

@Injectable(as: SeriesRepository)
class SeriesRepositoryImpl implements SeriesRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  SeriesRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<List<SeriesEntity>> getPopularSeries({int? page}) async {
    final popularSeries = await remoteDataSource.getPopularSeries(page);
    return Future.value(popularSeries.toEntity());
  }

  @override
  Future<List<SeriesEntity>> getTopRatedSeries({int? page}) async {
    final topRatedSeries = await remoteDataSource.getTopRatedSeries(page);
    return Future.value(topRatedSeries.toEntity());
  }

  @override
  Future<List<SeriesEntity>> getOnTheAirSeries({int? page}) async {
    final onTheAirSeries = await remoteDataSource.getOnTheAirSeries(page);
    return Future.value(onTheAirSeries.toEntity());
  }

  @override
  Future<List<SeriesEntity>> getAiringTodaySeries({int? page}) async {
    final airingTodaySeries = await remoteDataSource.getAiringTodaySeries(page);
    return Future.value(airingTodaySeries.toEntity());
  }

  @override
  Future<List<SeriesEntity>> getSeriesRecommendations(int seriesId,
      {int? page}) async {
    final seriesRecommendations =
        await remoteDataSource.getSeriesRecommendations(seriesId, page);
    return Future.value(seriesRecommendations.toEntity());
  }

  @override
  Future<SeriesEntity> getLatestSeries() async {
    final latestSeries = await remoteDataSource.getLatestSeries();
    return Future.value(latestSeries.toEntity());
  }

  @override
  Future<List<String>> getSeriesKeywords(int seriesId) async {
    return (await remoteDataSource.getSeriesKeywords(seriesId)).toEntity();
  }

  @override
  Future<List<ReviewEntity>> getSeriesReviews(int seriesId, {int? page}) async {
    return (await remoteDataSource.getSeriesReviews(seriesId, page)).toEntity();
  }

  @override
  Future<void> rateSeries(int seriesId, double rate) async {
    remoteDataSource.rateSeries(seriesId, rate);
  }

  @override
  Future<SeasonEntity> getSeasonDetails(int seriesId, int seasonNumber) async {
    return (await remoteDataSource.getSeasonDetails(seriesId, seasonNumber))
        .toEntity();
  }

  @override
  Future<List<String>> getSeasonImages(int seriesId, int seasonNumber) async {
    return (await remoteDataSource.getSeasonImages(seriesId, seasonNumber))
        .toEntity();
  }

  @override
  Future<List<TrailerEntity>> getSeriesTrailers(int seriesId) async {
    return (await remoteDataSource.getSeriesTrailers(seriesId)).toEntity();
  }

  @override
  Future<EpisodeEntity> getEpisodeDetails(
      int seriesId, int season, int episode) async {
    return (await remoteDataSource.getEpisodeDetails(seriesId, season, episode))
        .toEntity();
  }

  @override
  Future<List<String>> getEpisodeImages(
      int seriesId, int season, int episode) async {
    return (await remoteDataSource.getEpisodeImages(seriesId, season, episode))
        .toEntity();
  }

  @override
  Future<List<TrailerEntity>> getEpisodeTrailers(
      int seriesId, int season, int episode) async {
    return (await remoteDataSource.getEpisodeTrailers(
            seriesId, season, episode))
        .toEntity();
  }

  @override
  Future<void> rateEpisode(
      int seriesId, int season, int episode, double rate) async {
    remoteDataSource.rateEpisode(seriesId, season, episode, rate);
  }

  @override
  Future<SeriesEntity> getSeriesDetails(int seriesId) async {
    return (await remoteDataSource.getSeriesDetails(seriesId)).toEntity();
  }

  @override
  Future<List<String>> getSeriesImages(int seriesId) async {
    return (await remoteDataSource.getSeriesImages(seriesId)).toEntity();
  }

  @override
  Future<List<SeriesEntity>> getSimilarSeries(int seriesId, {int? page}) async {
    return (await remoteDataSource.getSimilarSeries(seriesId, page)).toEntity();
  }

  @override
  Stream<List<SeriesEntity>> getLocalPopularSeries() {
    return Stream.fromFuture(localDataSource.getPopularSeries())
        .map((series) => series.toPopularSeriesEntity());
  }

  @override
  Stream<List<SeriesEntity>> getLocalTopRatedSeries() {
    return Stream.fromFuture(localDataSource.getTopRatedSeries())
        .map((series) => series.toTopRatedSeriesEntity());
  }

  @override
  Stream<List<SeriesEntity>> getLocalOnTheAirSeries() {
    return Stream.fromFuture(localDataSource.getOnTheAirSeries())
        .map((series) => series.toOnTheAirSeriesEntity());
  }

  @override
  Stream<List<SeriesEntity>> getLocalAiringTodaySeries() {
    return Stream.fromFuture(localDataSource.getAiringTodaySeries())
        .map((series) => series.toAiringTodaySeriesEntity());
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

  @override
  Future<List<SeriesEntity>> searchSeries(String query, {int? page}) async {
    final seriesResults = await remoteDataSource.searchSeries(query, page);
    return seriesResults.toEntity();
  }
}
