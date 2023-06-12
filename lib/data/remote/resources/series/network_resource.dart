// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'network_resource.g.dart';

@JsonSerializable()
class NetworkResource {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  NetworkResource({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory NetworkResource.fromJson(Map<String, dynamic> json) =>
      _$NetworkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkResourceToJson(this);
}
