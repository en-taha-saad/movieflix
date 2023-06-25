// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:data/remote/resources/series/series_episode_details_resource.dart';
import '../keyword_resource.dart';
import '../production_company_resource.dart';
import '../production_country_resource.dart';
import '../spoken_language_resource.dart';
import 'created_by_resource.dart';
import 'episode_resource.dart';
import 'network_resource.dart';
import 'season_resource.dart';

part 'series_details_resource.g.dart';

@JsonSerializable()
class SeriesDetailsResource {
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'created_by')
  final List<CreatedByResource?>? createdBy;
  @JsonKey(name: 'episode_run_time')
  final List<int?>? episodeRunTime;
  @JsonKey(name: 'first_air_date')
  final String? firstAirDate;
  @JsonKey(name: 'genres')
  final List<KeywordResource?>? genres;
  @JsonKey(name: 'homepage')
  final String? homepage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'in_production')
  final bool? inProduction;
  @JsonKey(name: 'languages')
  final List<String?>? languages;
  @JsonKey(name: 'last_air_date')
  final String? lastAirDate;
  @JsonKey(name: 'last_episode_to_air')
  final EpisodeResource? lastEpisodeToAir;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'networks')
  final List<NetworkResource?>? networks;
  @JsonKey(name: 'next_episode_to_air')
  final SeriesEpisodeDetailsResource? nextEpisodeToAir;
  @JsonKey(name: 'number_of_episodes')
  final int? numberOfEpisodes;
  @JsonKey(name: 'number_of_seasons')
  final int? numberOfSeasons;
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
  @JsonKey(name: 'production_companies')
  final List<ProductionCompanyResource?>? productionCompanies;
  @JsonKey(name: 'production_countries')
  final List<ProductionCountryResource?>? productionCountries;
  @JsonKey(name: 'seasons')
  final List<SeasonResource?>? seasons;
  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguageResource?>? spokenLanguages;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'tagline')
  final String? tagline;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'vote_average')
  final int? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  SeriesDetailsResource({
    this.adult,
    this.backdropPath,
    this.createdBy,
    this.episodeRunTime,
    this.firstAirDate,
    this.genres,
    this.homepage,
    this.id,
    this.inProduction,
    this.languages,
    this.lastAirDate,
    this.lastEpisodeToAir,
    this.name,
    this.networks,
    this.nextEpisodeToAir,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.seasons,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.type,
    this.voteAverage,
    this.voteCount,
  });

  factory SeriesDetailsResource.fromJson(Map<String, dynamic> json) =>
      _$SeriesDetailsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesDetailsResourceToJson(this);
}
