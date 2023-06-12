// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_language_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpokenLanguageResource _$SpokenLanguageResourceFromJson(
        Map<String, dynamic> json) =>
    SpokenLanguageResource(
      englishName: json['english_name'] as String?,
      iso6391: json['iso_639_1'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SpokenLanguageResourceToJson(
        SpokenLanguageResource instance) =>
    <String, dynamic>{
      'english_name': instance.englishName,
      'iso_639_1': instance.iso6391,
      'name': instance.name,
    };
