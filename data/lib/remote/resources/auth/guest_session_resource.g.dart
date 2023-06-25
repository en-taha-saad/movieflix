// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_session_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuestSessionResource _$GuestSessionResourceFromJson(
        Map<String, dynamic> json) =>
    GuestSessionResource(
      expiresAt: json['expires_at'] as String?,
      guestSessionId: json['guest_session_id'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$GuestSessionResourceToJson(
        GuestSessionResource instance) =>
    <String, dynamic>{
      'expires_at': instance.expiresAt,
      'guest_session_id': instance.guestSessionId,
      'success': instance.success,
    };
