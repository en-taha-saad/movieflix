// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'keyword_resource.g.dart';

@JsonSerializable()
class KeywordResource {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;

  KeywordResource({this.id, this.name});

  factory KeywordResource.fromJson(Map<String, dynamic> json) =>
      _$KeywordResourceFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordResourceToJson(this);
}
