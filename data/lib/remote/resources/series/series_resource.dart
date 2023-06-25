// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'series_resource.g.dart';

@JsonSerializable()
class SeriesResource {
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'first_air_date')
  final String? firstAirDate;
  @JsonKey(name: 'genre_ids')
  final List<int?>? genreIds;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'origin_country')
  final List<String?>? originCountry;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_name')
  final String? originalName;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  SeriesResource({
    this.backdropPath,
    this.firstAirDate,
    this.genreIds,
    this.id,
    this.name,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.voteAverage,
    this.voteCount,
  });

  factory SeriesResource.fromJson(Map<String, dynamic> json) =>
      _$SeriesResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesResourceToJson(this);
}
