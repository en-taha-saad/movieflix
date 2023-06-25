// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_star_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuestStarResource _$GuestStarResourceFromJson(Map<String, dynamic> json) =>
    GuestStarResource(
      adult: json['adult'] as bool?,
      character: json['character'] as String?,
      creditId: json['credit_id'] as String?,
      gender: json['gender'] as int?,
      id: json['id'] as int?,
      knownForDepartment: json['known_for_department'] as String?,
      name: json['name'] as String?,
      order: json['order'] as int?,
      originalName: json['original_name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$GuestStarResourceToJson(GuestStarResource instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'character': instance.character,
      'credit_id': instance.creditId,
      'gender': instance.gender,
      'id': instance.id,
      'known_for_department': instance.knownForDepartment,
      'name': instance.name,
      'order': instance.order,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': instance.profilePath,
    };
