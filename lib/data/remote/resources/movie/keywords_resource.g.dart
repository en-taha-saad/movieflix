// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keywords_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeywordsResource _$KeywordsResourceFromJson(Map<String, dynamic> json) =>
    KeywordsResource(
      id: json['id'] as int?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : KeywordResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KeywordsResourceToJson(KeywordsResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keywords': instance.keywords,
    };
