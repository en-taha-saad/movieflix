// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_by_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatedByResource _$CreatedByResourceFromJson(Map<String, dynamic> json) =>
    CreatedByResource(
      creditId: json['credit_id'] as String?,
      gender: json['gender'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$CreatedByResourceToJson(CreatedByResource instance) =>
    <String, dynamic>{
      'credit_id': instance.creditId,
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'profile_path': instance.profilePath,
    };
