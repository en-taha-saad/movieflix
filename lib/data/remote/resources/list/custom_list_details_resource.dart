// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';

part 'custom_list_details_resource.g.dart';

@JsonSerializable()
class CustomListDetailsResource {
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'favorite_count')
  final int? favoriteCount;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'item_count')
  final int? itemCount;
  @JsonKey(name: 'items')
  final List<MovieResource?>? items;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  CustomListDetailsResource(
      {this.createdBy,
      this.description,
      this.favoriteCount,
      this.id,
      this.iso6391,
      this.itemCount,
      this.items,
      this.name,
      this.posterPath});

  factory CustomListDetailsResource.fromJson(Map<String, dynamic> json) =>
      _$CustomListDetailsResourceFromJson(json);
  Map<String, dynamic> toJson() => _$CustomListDetailsResourceToJson(this);
}
