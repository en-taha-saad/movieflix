// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_details_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailerDetailsResource _$TrailerDetailsResourceFromJson(
        Map<String, dynamic> json) =>
    TrailerDetailsResource(
      id: json['id'] as String?,
      iso31661: json['iso_3166_1'] as String?,
      iso6391: json['iso_639_1'] as String?,
      key: json['key'] as String?,
      name: json['name'] as String?,
      official: json['official'] as bool?,
      publishedAt: json['published_at'] as String?,
      site: json['site'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TrailerDetailsResourceToJson(
        TrailerDetailsResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso_3166_1': instance.iso31661,
      'iso_639_1': instance.iso6391,
      'key': instance.key,
      'name': instance.name,
      'official': instance.official,
      'published_at': instance.publishedAt,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
    };
