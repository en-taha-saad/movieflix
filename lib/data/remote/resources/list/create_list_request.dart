// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'create_list_request.g.dart';

@JsonSerializable()
class CreateListRequest {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'language')
  final String? language;

  CreateListRequest({this.name, this.description, this.language});

  factory CreateListRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateListRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateListRequestToJson(this);
}
