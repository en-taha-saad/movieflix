// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'spoken_language_resource.g.dart';

@JsonSerializable()
class SpokenLanguageResource {
  @JsonKey(name: 'english_name')
  final String? englishName;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'name')
  final String? name;

  SpokenLanguageResource({this.englishName, this.iso6391, this.name});

  factory SpokenLanguageResource.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguageResourceToJson(this);
}
