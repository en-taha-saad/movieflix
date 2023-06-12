// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'belongs_to_collection_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BelongsToCollectionResource _$BelongsToCollectionResourceFromJson(
        Map<String, dynamic> json) =>
    BelongsToCollectionResource(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$BelongsToCollectionResourceToJson(
        BelongsToCollectionResource instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'name': instance.name,
      'poster_path': instance.posterPath,
    };
