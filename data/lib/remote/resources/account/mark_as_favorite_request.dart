// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'mark_as_favorite_request.g.dart';

@JsonSerializable()
class MarkAsFavoriteRequest {
  @JsonKey(name: 'media_id')
  final int? mediaId;
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @JsonKey(name: 'favorite')
  final bool? favorite;

  MarkAsFavoriteRequest({this.mediaId, this.mediaType, this.favorite});

  factory MarkAsFavoriteRequest.fromJson(Map<String, dynamic> json) =>
      _$MarkAsFavoriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MarkAsFavoriteRequestToJson(this);
}
