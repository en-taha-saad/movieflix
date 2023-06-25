// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'created_by_resource.g.dart';

@JsonSerializable()
class CreatedByResource {
  @JsonKey(name: 'credit_id')
  final String? creditId;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  CreatedByResource({
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.profilePath,
  });

  factory CreatedByResource.fromJson(Map<String, dynamic> json) =>
      _$CreatedByResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CreatedByResourceToJson(this);
}
