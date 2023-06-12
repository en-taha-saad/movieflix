// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:movieflix/data/remote/resources/review/author_details_resource.dart';

part 'review_resource.g.dart';

@JsonSerializable()
class ReviewResource {
  @JsonKey(name: 'author')
  final String? author;
  @JsonKey(name: 'author_details')
  final AuthorDetailsResource? authorDetails;
  @JsonKey(name: 'content')
  final String? content;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'url')
  final String? url;

  ReviewResource({
    this.author,
    this.authorDetails,
    this.content,
    this.createdAt,
    this.id,
    this.updatedAt,
    this.url,
  });

  factory ReviewResource.fromJson(Map<String, dynamic> json) =>
      _$ReviewResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResourceToJson(this);
}
