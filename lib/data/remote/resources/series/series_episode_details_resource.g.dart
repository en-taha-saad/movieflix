// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_episode_details_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesEpisodeDetailsResource _$SeriesEpisodeDetailsResourceFromJson(
        Map<String, dynamic> json) =>
    SeriesEpisodeDetailsResource(
      airDate: json['air_date'] as String?,
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : CrewResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodeNumber: json['episode_number'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      productionCode: json['production_code'] as String?,
      runtime: json['runtime'] as int?,
      seasonNumber: json['season_number'] as int?,
      stillPath: json['still_path'] as String?,
      voteAverage: json['vote_average'] as int?,
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$SeriesEpisodeDetailsResourceToJson(
        SeriesEpisodeDetailsResource instance) =>
    <String, dynamic>{
      'air_date': instance.airDate,
      'crew': instance.crew,
      'episode_number': instance.episodeNumber,
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'production_code': instance.productionCode,
      'runtime': instance.runtime,
      'season_number': instance.seasonNumber,
      'still_path': instance.stillPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
