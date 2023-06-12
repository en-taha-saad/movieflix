// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailers_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailersResource _$TrailersResourceFromJson(Map<String, dynamic> json) =>
    TrailersResource(
      id: json['id'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TrailerDetailsResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrailersResourceToJson(TrailersResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
