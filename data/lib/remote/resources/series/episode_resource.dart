// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'crew_resource.dart';
import 'guest_star_resource.dart';

part 'episode_resource.g.dart';

@JsonSerializable()
class EpisodeResource {
  @JsonKey(name: 'air_date')
  final String? airDate;
  @JsonKey(name: 'crew')
  final List<CrewResource?>? crew;
  @JsonKey(name: 'episode_number')
  final int? episodeNumber;
  @JsonKey(name: 'guest_stars')
  final List<GuestStarResource?>? guestStars;
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
  @JsonKey(name: 'show_id')
  final int? showId;
  @JsonKey(name: 'still_path')
  final String? stillPath;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  EpisodeResource({
    this.airDate,
    this.crew,
    this.episodeNumber,
    this.guestStars,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  factory EpisodeResource.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResourceFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeResourceToJson(this);
}
