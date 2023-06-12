// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodeResource _$EpisodeResourceFromJson(Map<String, dynamic> json) =>
    EpisodeResource(
      airDate: json['air_date'] as String?,
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CrewResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodeNumber: json['episode_number'] as int?,
      guestStars: (json['guest_stars'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GuestStarResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      productionCode: json['production_code'] as String?,
      runtime: json['runtime'] as int?,
      seasonNumber: json['season_number'] as int?,
      showId: json['show_id'] as int?,
      stillPath: json['still_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$EpisodeResourceToJson(EpisodeResource instance) =>
    <String, dynamic>{
      'air_date': instance.airDate,
      'crew': instance.crew,
      'episode_number': instance.episodeNumber,
      'guest_stars': instance.guestStars,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'production_code': instance.productionCode,
      'runtime': instance.runtime,
      'season_number': instance.seasonNumber,
      'show_id': instance.showId,
      'still_path': instance.stillPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
