// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'person_resource.g.dart';

@JsonSerializable()
class PersonResource {
  @JsonKey(name: 'adult')
  final bool? adult;
  @JsonKey(name: 'also_known_as')
  final List<String?>? alsoKnownAs;
  @JsonKey(name: 'biography')
  final String? biography;
  @JsonKey(name: 'birthday')
  final String? birthday;
  @JsonKey(name: 'deathday')
  final String? deathday;
  @JsonKey(name: 'gender')
  final int? gender;
  @JsonKey(name: 'homepage')
  final String? homepage;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'place_of_birth')
  final String? placeOfBirth;
  @JsonKey(name: 'popularity')
  final double? popularity;
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  PersonResource({
    this.adult,
    this.alsoKnownAs,
    this.biography,
    this.birthday,
    this.deathday,
    this.gender,
    this.homepage,
    this.id,
    this.imdbId,
    this.knownForDepartment,
    this.name,
    this.placeOfBirth,
    this.popularity,
    this.profilePath,
  });

  factory PersonResource.fromJson(Map<String, dynamic> json) =>
      _$PersonResourceFromJson(json);

  Map<String, dynamic> toJson() => _$PersonResourceToJson(this);
}
