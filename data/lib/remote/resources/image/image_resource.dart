// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'image_resource.g.dart';

@JsonSerializable()
class ImageResource {
  @JsonKey(name: 'aspect_ratio')
  final double? aspectRatio;
  @JsonKey(name: 'file_path')
  final String? filePath;
  @JsonKey(name: 'height')
  final int? height;
  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @JsonKey(name: 'vote_count')
  final int? voteCount;
  @JsonKey(name: 'width')
  final int? width;

  ImageResource({this.aspectRatio, this.filePath, this.height, this.iso6391, this.voteAverage, this.voteCount, this.width});

  factory ImageResource.fromJson(Map<String, dynamic> json) => _$ImageResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ImageResourceToJson(this);
}
