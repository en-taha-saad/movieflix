// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResource _$ReviewResourceFromJson(Map<String, dynamic> json) =>
    ReviewResource(
      author: json['author'] as String?,
      authorDetails: json['author_details'] == null
          ? null
          : AuthorDetailsResource.fromJson(
              json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updated_at'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ReviewResourceToJson(ReviewResource instance) =>
    <String, dynamic>{
      'author': instance.author,
      'author_details': instance.authorDetails,
      'content': instance.content,
      'created_at': instance.createdAt,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'url': instance.url,
    };
