// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'guest_session_resource.g.dart';

@JsonSerializable()
class GuestSessionResource {
  @JsonKey(name: 'expires_at')
  final String? expiresAt;
  @JsonKey(name: 'guest_session_id')
  final String? guestSessionId;
  @JsonKey(name: 'success')
  final bool? success;

  GuestSessionResource({this.expiresAt, this.guestSessionId, this.success});

  factory GuestSessionResource.fromJson(Map<String, dynamic> json) => _$GuestSessionResourceFromJson(json);
  Map<String, dynamic> toJson() => _$GuestSessionResourceToJson(this);
}
