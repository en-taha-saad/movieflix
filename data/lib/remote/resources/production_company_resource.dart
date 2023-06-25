// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'production_company_resource.g.dart';

@JsonSerializable()
class ProductionCompanyResource {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  ProductionCompanyResource({this.id, this.logoPath, this.name, this.originCountry});

  factory ProductionCompanyResource.fromJson(Map<String, dynamic> json) => _$ProductionCompanyResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompanyResourceToJson(this);
}
