// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

// @JsonSerializable()
class Pagination<T> {
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'results')
  final List<T>? items;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  Pagination({this.page, this.items, this.totalPages, this.totalResults});

  factory Pagination.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginationFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PaginationToJson(this, toJsonT);
}
