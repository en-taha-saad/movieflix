class Pagination<T> {
  final int? page;
  final List<T>? items;
  final int? totalPages;
  final int? totalResults;

  Pagination({this.page, this.items, this.totalPages, this.totalResults});

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json['page'] as int?,
        items: (json['results'] as List<T>?)?.map((e) => e).toList(),
        totalPages: json['total_pages'] as int?,
        totalResults: json['total_results'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'page': page,
        'results': items,
        'total_pages': totalPages,
        'total_results': totalResults,
      };
}
