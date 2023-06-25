// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:movieflix/data/remote/resources/series/episode_resource.dart';

part 'session_details_resource.g.dart';

@JsonSerializable()
class SessionDetailsResource {
  @JsonKey(name: 'air_date')
  final String? airDate;
  @JsonKey(name: 'episodes')
  final List<EpisodeResource?>? episodes;
  @JsonKey(name: '_id')
  final String? id;
  @JsonKey(name: 'id')
  final int? seasonId;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'overview')
  final String? overview;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @JsonKey(name: 'season_number')
  final int? seasonNumber;

  SessionDetailsResource({
    this.airDate,
    this.episodes,
    this.id,
    this.seasonId,
    this.name,
    this.overview,
    this.posterPath,
    this.seasonNumber,
  });

  factory SessionDetailsResource.fromJson(Map<String, dynamic> json) =>
      _$SessionDetailsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SessionDetailsResourceToJson(this);
}
