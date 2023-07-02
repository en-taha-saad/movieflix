import 'package:movieflix/domain/entity/movie/author_details_entity.dart';

class ReviewEntity {
  final int id;
  final AuthorDetailsEntity author;
  final String content;
  final String createdAt;
  final String updatedAt;
  final String imageUrl;
  final int rating;
  final String username;

  ReviewEntity({
    required this.id,
    required this.author,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
    required this.rating,
    required this.username,
  });
}
