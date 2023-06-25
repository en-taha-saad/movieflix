// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'avatar_path_resource.dart';
import 'gravatar_resource.dart';

part 'avatar_resource.g.dart';

@JsonSerializable()
class AvatarResource {
  @JsonKey(name: 'gravatar')
  final GravatarResource? gravatar;
  @JsonKey(name: 'tmdb')
  final AvatarPathResource? avatarPath;

  AvatarResource({this.gravatar, this.avatarPath});

  factory AvatarResource.fromJson(Map<String, dynamic> json) =>
      _$AvatarResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarResourceToJson(this);
}
