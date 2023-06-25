// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'guest_star_resource.g.dart';

@JsonSerializable()
class GuestStarResource {
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'character')
  final String? character;
  @JsonKey(name: 'credit_id')
  final String? creditId;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'order')
  final int? order;
  @JsonKey(name: 'original_name')
  final String? originalName;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  GuestStarResource({
    this.adult,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.order,
    this.originalName,
    this.popularity,
    this.profilePath,
  });

  factory GuestStarResource.fromJson(Map<String, dynamic> json) =>
      _$GuestStarResourceFromJson(json);

  Map<String, dynamic> toJson() => _$GuestStarResourceToJson(this);
}
