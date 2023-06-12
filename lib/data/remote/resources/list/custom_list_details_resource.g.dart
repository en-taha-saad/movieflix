// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_list_details_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomListDetailsResource _$CustomListDetailsResourceFromJson(
        Map<String, dynamic> json) =>
    CustomListDetailsResource(
      createdBy: json['created_by'] as String?,
      description: json['description'] as String?,
      favoriteCount: json['favorite_count'] as int?,
      id: json['id'] as String?,
      iso6391: json['iso_639_1'] as String?,
      itemCount: json['item_count'] as int?,
      items: json['items'] as List<dynamic>?,
      name: json['name'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$CustomListDetailsResourceToJson(
        CustomListDetailsResource instance) =>
    <String, dynamic>{
      'created_by': instance.createdBy,
      'description': instance.description,
      'favorite_count': instance.favoriteCount,
      'id': instance.id,
      'iso_639_1': instance.iso6391,
      'item_count': instance.itemCount,
      'items': instance.items,
      'name': instance.name,
      'poster_path': instance.posterPath,
    };
