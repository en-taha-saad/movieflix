// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'gravatar_resource.g.dart';

@JsonSerializable()
class GravatarResource {
  @JsonKey(name: 'hash')
  final String? hash;

  GravatarResource({this.hash});

  factory GravatarResource.fromJson(Map<String, dynamic> json) => _$GravatarResourceFromJson(json);

  Map<String, dynamic> toJson() => _$GravatarResourceToJson(this);
}
