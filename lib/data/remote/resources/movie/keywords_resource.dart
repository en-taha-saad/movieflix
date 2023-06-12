// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:movieflix/data/remote/resources/keyword_resource.dart';

part 'keywords_resource.g.dart';

@JsonSerializable()
class KeywordsResource {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'keywords')
  final List<KeywordResource?>? keywords;

  KeywordsResource({this.id, this.keywords});

  factory KeywordsResource.fromJson(Map<String, dynamic> json) =>
      _$KeywordsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordsResourceToJson(this);
}
