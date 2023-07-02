import 'package:movieflix/data/local/database/entity/series_dtos/airing_today_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/on_the_air_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/popular_series_dto.dart';
import 'package:movieflix/data/local/database/entity/series_dtos/top_rated_series_dto.dart';
import 'package:movieflix/data/remote/resources/pagination.dart';
import 'package:movieflix/data/remote/resources/series/series_resource.dart';
import 'package:movieflix/domain/entity/series/series_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension SeriesResourceExtensions on SeriesResource {
  SeriesEntity toEntity() {
    return SeriesEntity(
      id: id.orZero(),
      name: name.orEmpty(),
      imageUrl: "${Constants.imageUrl}$posterPath",
      firstAirDate: firstAirDate.orEmpty(),
      popularity: popularity.orZero(),
      voteAverage: voteAverage.orZero(),
      formattedDate: '',
    );
  }
}

extension PaginationSeriesResourceExtensions on Pagination<SeriesResource> {
  List<SeriesEntity> toEntity() {
    return items
            ?.whereType<SeriesResource>()
            .map((movieResource) => movieResource.toEntity())
            .whereType<SeriesEntity>()
            .toList() ??
        [];
  }
}

extension SeriesResourcePopularSeriesDtoExtensions on SeriesResource {
  PopularSeriesDto toPopularSeriesDto() {
    return PopularSeriesDto(
      id.orZero(),
      name.orEmpty(),
      firstAirDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
      popularity.orZero(),
      voteAverage.orZero(),
    );
  }
}

extension PaginationSeriesResourcePopularSeriesDtoExtensions
    on Pagination<SeriesResource> {
  List<PopularSeriesDto?> toPopularSeriesDto() {
    return items?.map((item) => item?.toPopularSeriesDto()).toList() ?? [];
  }
}

extension SeriesResourceTopRatedSeriesDtoExtensions on SeriesResource {
  TopRatedSeriesDto toTopRatedSeriesDto() {
    return TopRatedSeriesDto(
      id.orZero(),
      name.orEmpty(),
      firstAirDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
      popularity.orZero(),
      voteAverage.orZero(),
    );
  }
}

extension PaginationSeriesResourceTopRatedSeriesDtoExtensions
    on Pagination<SeriesResource> {
  List<TopRatedSeriesDto?> toTopRatedSeriesDto() {
    return items?.map((item) => item?.toTopRatedSeriesDto()).toList() ?? [];
  }
}

extension SeriesResourceAiringTodaySeriesDtoExtensions on SeriesResource {
  AiringTodaySeriesDto toAiringTodaySeriesDto() {
    return AiringTodaySeriesDto(
      id.orZero(),
      name.orEmpty(),
      firstAirDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
      popularity.orZero(),
      voteAverage.orZero(),
    );
  }
}

extension PaginationSeriesResourceAiringTodaySeriesDtoExtensions
    on Pagination<SeriesResource> {
  List<AiringTodaySeriesDto?> toAiringTodaySeriesDto() {
    return items?.map((item) => item?.toAiringTodaySeriesDto()).toList() ?? [];
  }
}

extension SeriesResourceOnTheAirSeriesDtoExtensions on SeriesResource {
  OnTheAirSeriesDto toOnTheAirSeriesDto() {
    return OnTheAirSeriesDto(
      id.orZero(),
      name.orEmpty(),
      firstAirDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
      popularity.orZero(),
      voteAverage.orZero(),
    );
  }
}

extension PaginationSeriesResourceOnTheAirSeriesDtoExtensions
    on Pagination<SeriesResource> {
  List<OnTheAirSeriesDto?> toOnTheAirSeriesDto() {
    return items?.map((item) => item?.toOnTheAirSeriesDto()).toList() ?? [];
  }
}
