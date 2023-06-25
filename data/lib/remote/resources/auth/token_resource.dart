// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'token_resource.g.dart';

@JsonSerializable()
class TokenResource {
  @JsonKey(name: 'expires_at')
  final String? expiresAt;
  @JsonKey(name: 'request_token')
  final String? requestToken;
  @JsonKey(name: 'success')
  final bool? success;

  TokenResource({this.expiresAt, this.requestToken, this.success});

  factory TokenResource.fromJson(Map<String, dynamic> json) =>
      _$TokenResourceFromJson(json);
  Map<String, dynamic> toJson() => _$TokenResourceToJson(this);
}
