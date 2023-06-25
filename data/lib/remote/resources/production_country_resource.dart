// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'production_country_resource.g.dart';

@JsonSerializable()
class ProductionCountryResource {
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @JsonKey(name: 'name')
  final String? name;

  ProductionCountryResource({this.iso31661, this.name});

  factory ProductionCountryResource.fromJson(Map<String, dynamic> json) => _$ProductionCountryResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCountryResourceToJson(this);
}
