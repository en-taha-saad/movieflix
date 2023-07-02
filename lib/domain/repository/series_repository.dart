import 'package:movieflix/domain/entity/review_entity.dart';
import 'package:movieflix/domain/entity/series/episode_entity.dart';
import 'package:movieflix/domain/entity/series/season_entity.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';
import 'package:movieflix/domain/entity/trailer_entity.dart';

abstract class SeriesRepository {
  Future<List<SeriesEntity>> getPopularSeries({int? page});

  Future<List<SeriesEntity>> getTopRatedSeries({int? page});

  Future<List<SeriesEntity>> getOnTheAirSeries({int? page});

  Future<List<SeriesEntity>> getAiringTodaySeries({int? page});

  Future<List<SeriesEntity>> getSeriesRecommendations(int seriesId,
      {int? page});

  Future<SeriesEntity> getLatestSeries();

  Future<List<String>> getSeriesKeywords(int seriesId);

  Future<List<ReviewEntity>> getSeriesReviews(int seriesId, {int? page});

  Future<void> rateSeries(int seriesId, double rate);

  Future<SeasonEntity> getSeasonDetails(int seriesId, int seasonNumber);

  Future<List<String>> getSeasonImages(int seriesId, int seasonNumber);

  Future<List<TrailerEntity>> getSeriesTrailers(int seriesId);

  Future<EpisodeEntity> getEpisodeDetails(
      int seriesId, int season, int episode);

  Future<List<String>> getEpisodeImages(int seriesId, int season, int episode);

  Future<List<TrailerEntity>> getEpisodeTrailers(
      int seriesId, int season, int episode);

  Future<void> rateEpisode(int seriesId, int season, int episode, double rate);

  Future<SeriesEntity> getSeriesDetails(int seriesId);

  Future<List<String>> getSeriesImages(int seriesId);

  Future<List<SeriesEntity>> getSimilarSeries(int seriesId, {int? page});

  Stream<List<SeriesEntity>> getLocalPopularSeries();

  Stream<List<SeriesEntity>> getLocalTopRatedSeries();

  Stream<List<SeriesEntity>> getLocalOnTheAirSeries();

  Stream<List<SeriesEntity>> getLocalAiringTodaySeries();

  Future<void> cachePopularSeries(List<SeriesEntity> series);

  Future<void> cacheTopRatedSeries(List<SeriesEntity> series);

  Future<void> cacheOnTheAirSeries(List<SeriesEntity> series);

  Future<void> cacheAiringTodaySeries(List<SeriesEntity> series);
}
