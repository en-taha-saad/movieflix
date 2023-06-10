import 'package:floor/floor.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/airing_today_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/on_the_air_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/popular_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/top_rated_series_dto.dart';

@dao
abstract class SeriesDao {
  @insert
  Future<void> insertPopularSeries(List<PopularSeriesDto> popularSeries);

  @insert
  Future<void> insertTopRatedSeries(List<TopRatedSeriesDto> topRatedSeries);

  @insert
  Future<void> insertOnTheAirSeries(List<OnTheAirSeriesDto> onTheAirSeries);

  @insert
  Future<void> insertAiringTodaySeries(
    List<AiringTodaySeriesDto> airingTodaySeries,
  );

  @Query('SELECT * FROM POPULAR_SERIES')
  Future<List<PopularSeriesDto>> getPopularSeries();

  @Query('SELECT * FROM TOP_RATED_SERIES')
  Future<List<TopRatedSeriesDto>> getTopRatedSeries();

  @Query('SELECT * FROM ON_THE_AIR_SERIES')
  Future<List<OnTheAirSeriesDto>> getOnTheAirSeries();

  @Query('SELECT * FROM AIRING_TODAY_SERIES')
  Future<List<AiringTodaySeriesDto>> getAiringTodaySeries();
}
