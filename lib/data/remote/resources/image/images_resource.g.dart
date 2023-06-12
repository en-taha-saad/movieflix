// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagesResource _$ImagesResourceFromJson(Map<String, dynamic> json) =>
    ImagesResource(
      backdrops: (json['backdrops'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ImageResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      logos: json['logos'] as List<dynamic>?,
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ImageResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      stills: (json['stills'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ImageResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImagesResourceToJson(ImagesResource instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops,
      'id': instance.id,
      'logos': instance.logos,
      'posters': instance.posters,
      'stills': instance.stills,
    };
