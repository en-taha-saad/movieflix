// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_details_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorDetailsResource _$AuthorDetailsResourceFromJson(
        Map<String, dynamic> json) =>
    AuthorDetailsResource(
      avatarPath: json['avatar_path'] as String?,
      name: json['name'] as String?,
      rating: json['rating'] as int?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$AuthorDetailsResourceToJson(
        AuthorDetailsResource instance) =>
    <String, dynamic>{
      'avatar_path': instance.avatarPath,
      'name': instance.name,
      'rating': instance.rating,
      'username': instance.username,
    };
