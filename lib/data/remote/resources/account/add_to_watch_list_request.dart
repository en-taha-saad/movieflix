// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'add_to_watch_list_request.g.dart';

@JsonSerializable()
class AddToWatchListRequest {
  @JsonKey(name: 'media_id')
  final int? mediaId;
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @JsonKey(name: 'watchlist')
  final bool? watchlist;

  AddToWatchListRequest({this.mediaId, this.mediaType, this.watchlist});

  factory AddToWatchListRequest.fromJson(Map<String, dynamic> json) => _$AddToWatchListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddToWatchListRequestToJson(this);
}
