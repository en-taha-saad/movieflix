// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'crew_resource.g.dart';

@JsonSerializable()
class CrewResource {
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'credit_id')
  final String? creditId;
  @JsonKey(name: 'department')
  final String? department;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'job')
  final String? job;
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'original_name')
  final String? originalName;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  CrewResource({
    this.adult,
    this.creditId,
    this.department,
    this.gender,
    this.id,
    this.job,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
  });

  factory CrewResource.fromJson(Map<String, dynamic> json) =>
      _$CrewResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CrewResourceToJson(this);
}
