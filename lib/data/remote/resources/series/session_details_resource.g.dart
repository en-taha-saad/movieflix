// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_details_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionDetailsResource _$SessionDetailsResourceFromJson(
        Map<String, dynamic> json) =>
    SessionDetailsResource(
      airDate: json['air_date'] as String?,
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : EpisodeResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['_id'] as String?,
      seasonId: json['id'] as int?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      seasonNumber: json['season_number'] as int?,
    );

Map<String, dynamic> _$SessionDetailsResourceToJson(
        SessionDetailsResource instance) =>
    <String, dynamic>{
      'air_date': instance.airDate,
      'episodes': instance.episodes,
      '_id': instance.id,
      'id': instance.seasonId,
      'name': instance.name,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'season_number': instance.seasonNumber,
    };
