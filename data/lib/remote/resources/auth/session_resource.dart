// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'session_resource.g.dart';

@JsonSerializable()
class SessionResource {
  @JsonKey(name: 'session_id')
  final String? sessionId;
  @JsonKey(name: 'success')
  final bool? success;

  SessionResource({this.sessionId, this.success});

  factory SessionResource.fromJson(Map<String, dynamic> json) => _$SessionResourceFromJson(json);
  Map<String, dynamic> toJson() => _$SessionResourceToJson(this);
}
