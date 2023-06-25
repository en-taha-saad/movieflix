// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResource _$TokenResourceFromJson(Map<String, dynamic> json) =>
    TokenResource(
      expiresAt: json['expires_at'] as String?,
      requestToken: json['request_token'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$TokenResourceToJson(TokenResource instance) =>
    <String, dynamic>{
      'expires_at': instance.expiresAt,
      'request_token': instance.requestToken,
      'success': instance.success,
    };
