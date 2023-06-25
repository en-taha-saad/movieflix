// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import '../keyword_resource.dart';
import '../production_company_resource.dart';
import '../production_country_resource.dart';
import '../spoken_language_resource.dart';
import 'belongs_to_collection_resource.dart';

part 'movie_details_resource.g.dart';

@JsonSerializable()
class MovieDetailsResource {
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'belongs_to_collection')
  final BelongsToCollectionResource? belongsToCollection;
  @JsonKey(name: 'budget')
  final int? budget;
  @JsonKey(name: 'genres')
  final List<KeywordResource?>? genres;
  @JsonKey(name: 'homepage')
  final String? homepage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
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
  @JsonKey(name: 'production_companies')
  final List<ProductionCompanyResource?>? productionCompanies;
  @JsonKey(name: 'production_countries')
  final List<ProductionCountryResource?>? productionCountries;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @JsonKey(name: 'revenue')
  final int? revenue;
  @JsonKey(name: 'runtime')
  final int? runtime;
  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguageResource?>? spokenLanguages;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'tagline')
  final String? tagline;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'video')
  final bool? video;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  MovieDetailsResource({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieDetailsResource.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDetailsResourceToJson(this);
}
