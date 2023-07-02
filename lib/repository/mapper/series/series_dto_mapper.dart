import 'package:movieflix/data/local/database/entity/series_dtos/airing_today_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/on_the_air_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/popular_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/top_rated_series_dto.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension PopularSeriesDtoExtensions on PopularSeriesDto {
  SeriesEntity toEntity() {
    return SeriesEntity(
      id: id.toInt(),
      name: title,
      imageUrl: "${Constants.imageUrl}${imageUrl.orEmpty()}",
      firstAirDate: date.orEmpty(),
      popularity: 0.0,
      voteAverage: 0.0,
      formattedDate: date,
    );
  }
}

extension TopRatedSeriesDtoExtensions on TopRatedSeriesDto {
  SeriesEntity toEntity() {
    return SeriesEntity(
      id: id.toInt(),
      name: title,
      imageUrl: "${Constants.imageUrl}${imageUrl.orEmpty()}",
      firstAirDate: date.orEmpty(),
      popularity: 0.0,
      voteAverage: 0.0,
      formattedDate: date,
    );
  }
}

extension AiringTodaySeriesDtoExtensions on AiringTodaySeriesDto {
  SeriesEntity toEntity() {
    return SeriesEntity(
      id: id.toInt(),
      name: title,
      imageUrl: "${Constants.imageUrl}${imageUrl.orEmpty()}",
      firstAirDate: date.orEmpty(),
      popularity: 0.0,
      voteAverage: 0.0,
      formattedDate: date,
    );
  }
}

extension OnTheAirSeriesDtoExtensions on OnTheAirSeriesDto {
  SeriesEntity toEntity() {
    return SeriesEntity(
      id: id.toInt(),
      name: title,
      imageUrl: "${Constants.imageUrl}${imageUrl.orEmpty()}",
      firstAirDate: date.orEmpty(),
      popularity: 0.0,
      voteAverage: 0.0,
      formattedDate: date,
    );
  }
}

extension PopularSeriesDtoListExtensions on List<PopularSeriesDto> {
  List<SeriesEntity> toPopularSeriesEntity() {
    return map((dto) => dto.toEntity()).toList();
  }
}

extension TopRatedSeriesDtoListExtensions on List<TopRatedSeriesDto> {
  List<SeriesEntity> toTopRatedSeriesEntity() {
    return map((dto) => dto.toEntity()).toList();
  }
}

extension AiringTodaySeriesDtoListExtensions on List<AiringTodaySeriesDto> {
  List<SeriesEntity> toAiringTodaySeriesEntity() {
    return map((dto) => dto.toEntity()).toList();
  }
}

extension OnTheAirSeriesDtoListExtensions on List<OnTheAirSeriesDto> {
  List<SeriesEntity> toOnTheAirSeriesEntity() {
    return map((dto) => dto.toEntity()).toList();
  }
}
