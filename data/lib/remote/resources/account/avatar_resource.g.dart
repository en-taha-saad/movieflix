// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvatarResource _$AvatarResourceFromJson(Map<String, dynamic> json) =>
    AvatarResource(
      gravatar: json['gravatar'] == null
          ? null
          : GravatarResource.fromJson(json['gravatar'] as Map<String, dynamic>),
      avatarPath: json['tmdb'] == null
          ? null
          : AvatarPathResource.fromJson(json['tmdb'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AvatarResourceToJson(AvatarResource instance) =>
    <String, dynamic>{
      'gravatar': instance.gravatar,
      'tmdb': instance.avatarPath,
    };
