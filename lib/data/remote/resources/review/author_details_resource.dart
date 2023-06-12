// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'author_details_resource.g.dart';

@JsonSerializable()
class AuthorDetailsResource {
  @JsonKey(name: 'avatar_path')
  final String? avatarPath;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'rating')
  final int? rating;
  @JsonKey(name: 'username')
  final String? username;

  AuthorDetailsResource(
      {this.avatarPath, this.name, this.rating, this.username});

  factory AuthorDetailsResource.fromJson(Map<String, dynamic> json) =>
      _$AuthorDetailsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDetailsResourceToJson(this);
}
