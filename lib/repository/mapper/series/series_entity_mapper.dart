import 'package:movieflix/data/local/database/entity/series_dtos/airing_today_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/on_the_air_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/popular_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/top_rated_series_dto.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';

extension SeriesEntityExtensions on SeriesEntity {
  PopularSeriesDto toPopularSeriesDto() {
    return PopularSeriesDto(
      id.toInt(),
      name,
      formattedDate,
      imageUrl,
      'en-US',
      'overview',
      popularity,
      voteAverage,
    );
  }

  TopRatedSeriesDto toTopRatedSeriesDto() {
    return TopRatedSeriesDto(
      id.toInt(),
      name,
      formattedDate,
      imageUrl,
      'en-US',
      'overview',
      popularity,
      voteAverage,
    );
  }

  OnTheAirSeriesDto toOnTheAirSeriesDto() {
    return OnTheAirSeriesDto(
      id.toInt(),
      name,
      formattedDate,
      imageUrl,
      'en-US',
      'overview',
      popularity,
      voteAverage,
    );
  }

  AiringTodaySeriesDto toAiringTodaySeriesDto() {
    return AiringTodaySeriesDto(
      id.toInt(),
      name,
      formattedDate,
      imageUrl,
      'en-US',
      'overview',
      popularity,
      voteAverage,
    );
  }
}

extension SeriesEntityListExtensions on List<SeriesEntity> {
  List<PopularSeriesDto> toPopularSeriesDto() {
    return map((entity) => entity.toPopularSeriesDto()).toList();
  }

  List<TopRatedSeriesDto> toTopRatedSeriesDto() {
    return map((entity) => entity.toTopRatedSeriesDto()).toList();
  }

  List<OnTheAirSeriesDto> toOnTheAirSeriesDto() {
    return map((entity) => entity.toOnTheAirSeriesDto()).toList();
  }

  List<AiringTodaySeriesDto> toAiringTodaySeriesDto() {
    return map((entity) => entity.toAiringTodaySeriesDto()).toList();
  }
}
