// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'avatar_path_resource.g.dart';

@JsonSerializable()
class AvatarPathResource {
  @JsonKey(name: 'avatar_path')
  final String? avatarPath;

  AvatarPathResource({this.avatarPath});

  factory AvatarPathResource.fromJson(Map<String, dynamic> json) => _$AvatarPathResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarPathResourceToJson(this);
}
