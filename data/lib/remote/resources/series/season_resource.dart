// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'season_resource.g.dart';

@JsonSerializable()
class SeasonResource {
  @JsonKey(name: 'air_date')
  final String? airDate;
  @JsonKey(name: 'episode_count')
  final int? episodeCount;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'season_number')
  final int? seasonNumber;

  SeasonResource({
    this.airDate,
    this.episodeCount,
    this.id,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
  });

  factory SeasonResource.fromJson(Map<String, dynamic> json) =>
      _$SeasonResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonResourceToJson(this);
}
