// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination<T> _$PaginationFromJson<T>(
    Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
  return Pagination<T>(
    page: json['page'] as int?,
    items: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
    totalPages: json['total_pages'] as int?,
    totalResults: json['total_results'] as int?,
  );
}

Map<String, dynamic> _$PaginationToJson<T>(
        Pagination<T> instance, Object Function(T value) toJsonT) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.items?.map(toJsonT).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
