// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionResource _$SessionResourceFromJson(Map<String, dynamic> json) =>
    SessionResource(
      sessionId: json['session_id'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$SessionResourceToJson(SessionResource instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'success': instance.success,
    };
