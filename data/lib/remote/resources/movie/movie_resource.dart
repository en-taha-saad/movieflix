// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'movie_resource.g.dart';

@JsonSerializable()
class MovieResource {
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'genre_ids')
  final List<int?>? genreIds;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'video')
  final bool? video;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  MovieResource({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieResource.fromJson(Map<String, dynamic> json) =>
      _$MovieResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResourceToJson(this);
}
