import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';
import 'package:movieflix/data/remote/resources/person/person_resource.dart';
import 'package:movieflix/data/remote/resources/review/review_resource.dart';
import 'package:movieflix/data/remote/resources/series/series_resource.dart';

class Pagination<T> {
  final int? page;
  final List<T?>? items;
  final int? totalPages;
  final int? totalResults;

  Pagination({this.page, this.items, this.totalPages, this.totalResults});

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json['page'] as int?,
        items: (json['results'] as List).map((dynamic e) {
          var entry = e as Map<String, dynamic>;
          if (T == MovieResource) {
            return MovieResource.fromJson(entry) as T;
          }
          if (T == ReviewResource) {
            return ReviewResource.fromJson(entry) as T;
          }
          if (T == SeriesResource) {
            return SeriesResource.fromJson(entry) as T;
          }
          if (T == PersonResource) {
            return PersonResource.fromJson(entry) as T;
          }
        }).toList(),
        totalPages: json['total_pages'] as int?,
        totalResults: json['total_results'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'page': page,
        'results': items,
        // ?.map((e) {
        //   if (e is MovieResource) {
        //     return e.toJson();
        //   }
        //   if (e is ReviewResource) {
        //     return e.toJson();
        //   }
        //   if (e is SeriesResource) {
        //     return e.toJson();
        //   }
        //   if (e is PersonResource) {
        //     return e.toJson();
        //   }
        // }).toList(),
        'total_pages': totalPages,
        'total_results': totalResults,
      };
}
