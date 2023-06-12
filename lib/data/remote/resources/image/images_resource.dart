// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'image_resource.dart';

part 'images_resource.g.dart';

@JsonSerializable()
class ImagesResource {
  @JsonKey(name: 'backdrops')
  final List<ImageResource?>? backdrops;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'logos')
  final List<dynamic>? logos;
  @JsonKey(name: 'posters')
  final List<ImageResource?>? posters;
  @JsonKey(name: 'stills')
  final List<ImageResource?>? stills;

  ImagesResource(
      {this.backdrops, this.id, this.logos, this.posters, this.stills});

  factory ImagesResource.fromJson(Map<String, dynamic> json) =>
      _$ImagesResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesResourceToJson(this);
}
