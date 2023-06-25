// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountResource _$AccountResourceFromJson(Map<String, dynamic> json) =>
    AccountResource(
      avatar: json['avatar'] == null
          ? null
          : AvatarResource.fromJson(json['avatar'] as Map<String, dynamic>),
      id: json['id'] as int?,
      includeAdult: json['include_adult'] as bool?,
      iso31661: json['iso_3166_1'] as String?,
      iso6391: json['iso_639_1'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$AccountResourceToJson(AccountResource instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'include_adult': instance.includeAdult,
      'iso_3166_1': instance.iso31661,
      'iso_639_1': instance.iso6391,
      'name': instance.name,
      'username': instance.username,
    };
