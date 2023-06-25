// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'belongs_to_collection_resource.g.dart';

@JsonSerializable()
class BelongsToCollectionResource {
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  BelongsToCollectionResource({
    this.backdropPath,
    this.id,
    this.name,
    this.posterPath,
  });

  factory BelongsToCollectionResource.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionResourceFromJson(json);

  Map<String, dynamic> toJson() => _$BelongsToCollectionResourceToJson(this);
}
