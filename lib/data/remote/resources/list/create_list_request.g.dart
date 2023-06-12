// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateListRequest _$CreateListRequestFromJson(Map<String, dynamic> json) =>
    CreateListRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$CreateListRequestToJson(CreateListRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'language': instance.language,
    };
