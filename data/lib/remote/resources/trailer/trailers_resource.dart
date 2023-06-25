// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'trailer_details_resource.dart';

part 'trailers_resource.g.dart';

@JsonSerializable()
class TrailersResource {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'results')
  final List<TrailerDetailsResource?>? results;

  TrailersResource({this.id, this.results});

  factory TrailersResource.fromJson(Map<String, dynamic> json) =>
      _$TrailersResourceFromJson(json);

  Map<String, dynamic> toJson() => _$TrailersResourceToJson(this);
}
