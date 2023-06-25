// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_as_favorite_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkAsFavoriteRequest _$MarkAsFavoriteRequestFromJson(
        Map<String, dynamic> json) =>
    MarkAsFavoriteRequest(
      mediaId: json['media_id'] as int?,
      mediaType: json['media_type'] as String?,
      favorite: json['favorite'] as bool?,
    );

Map<String, dynamic> _$MarkAsFavoriteRequestToJson(
        MarkAsFavoriteRequest instance) =>
    <String, dynamic>{
      'media_id': instance.mediaId,
      'media_type': instance.mediaType,
      'favorite': instance.favorite,
    };
