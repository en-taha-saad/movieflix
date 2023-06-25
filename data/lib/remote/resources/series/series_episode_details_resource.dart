// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'crew_resource.dart';

part 'series_episode_details_resource.g.dart';

@JsonSerializable()
class SeriesEpisodeDetailsResource {
  @JsonKey(name: 'air_date')
  final String? airDate;
  @JsonKey(name: 'crew')
  final List<CrewResource?>? crew;
  @JsonKey(name: 'episode_number')
  final int? episodeNumber;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'production_code')
  final String? productionCode;
  @JsonKey(name: 'runtime')
  final int? runtime;
  @JsonKey(name: 'season_number')
  final int? seasonNumber;
  @JsonKey(name: 'still_path')
  final String? stillPath;
  @JsonKey(name: 'vote_average')
  final int? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  SeriesEpisodeDetailsResource({
    this.airDate,
    this.crew,
    this.episodeNumber,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  factory SeriesEpisodeDetailsResource.fromJson(Map<String, dynamic> json) =>
      _$SeriesEpisodeDetailsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesEpisodeDetailsResourceToJson(this);
}
