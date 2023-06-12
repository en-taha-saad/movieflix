// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'trailer_details_resource.g.dart';

@JsonSerializable()
class TrailerDetailsResource {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'key')
  final String? key;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'official')
  final bool? official;
  @JsonKey(name: 'published_at')
  final String? publishedAt;
  @JsonKey(name: 'site')
  final String? site;
  @JsonKey(name: 'size')
  final int? size;
  @JsonKey(name: 'type')
  final String? type;

  TrailerDetailsResource({
    this.id,
    this.iso31661,
    this.iso6391,
    this.key,
    this.name,
    this.official,
    this.publishedAt,
    this.site,
    this.size,
    this.type,
  });

  factory TrailerDetailsResource.fromJson(Map<String, dynamic> json) =>
      _$TrailerDetailsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerDetailsResourceToJson(this);
}
