// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_movie_credits_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonMovieCreditsResource _$PersonMovieCreditsResourceFromJson(
        Map<String, dynamic> json) =>
    PersonMovieCreditsResource(
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MovieResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$PersonMovieCreditsResourceToJson(
        PersonMovieCreditsResource instance) =>
    <String, dynamic>{
      'cast': instance.cast,
      'id': instance.id,
    };
