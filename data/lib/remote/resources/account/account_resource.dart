// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import './avatar_resource.dart';

part 'account_resource.g.dart';

@JsonSerializable()
class AccountResource {
  @JsonKey(name: 'avatar')
  final AvatarResource? avatar;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'include_adult')
  final bool? includeAdult;
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'username')
  final String? username;

  AccountResource(
      {this.avatar,
      this.id,
      this.includeAdult,
      this.iso31661,
      this.iso6391,
      this.name,
      this.username});

  factory AccountResource.fromJson(Map<String, dynamic> json) =>
      _$AccountResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AccountResourceToJson(this);
}
