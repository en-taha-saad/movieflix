// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_watch_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToWatchListRequest _$AddToWatchListRequestFromJson(
        Map<String, dynamic> json) =>
    AddToWatchListRequest(
      mediaId: json['media_id'] as int?,
      mediaType: json['media_type'] as String?,
      watchlist: json['watchlist'] as bool?,
    );

Map<String, dynamic> _$AddToWatchListRequestToJson(
        AddToWatchListRequest instance) =>
    <String, dynamic>{
      'media_id': instance.mediaId,
      'media_type': instance.mediaType,
      'watchlist': instance.watchlist,
    };
