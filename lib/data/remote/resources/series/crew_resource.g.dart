// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrewResource _$CrewResourceFromJson(Map<String, dynamic> json) => CrewResource(
      adult: json['adult'] as bool?,
      creditId: json['credit_id'] as String?,
      department: json['department'] as String?,
      gender: json['gender'] as int?,
      id: json['id'] as int?,
      job: json['job'] as String?,
      knownForDepartment: json['known_for_department'] as String?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$CrewResourceToJson(CrewResource instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'credit_id': instance.creditId,
      'department': instance.department,
      'gender': instance.gender,
      'id': instance.id,
      'job': instance.job,
      'known_for_department': instance.knownForDepartment,
      'name': instance.name,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
    };
