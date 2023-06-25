// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkResource _$NetworkResourceFromJson(Map<String, dynamic> json) =>
    NetworkResource(
      id: json['id'] as int?,
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$NetworkResourceToJson(NetworkResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };
