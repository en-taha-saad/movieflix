import 'package:movieflix/domain/entity/movie/movie_entity.dart';

class CustomListDetailsEntity {
  final String createdBy;
  final String description;
  final String id;
  final List<MovieEntity> items;
  final String name;
  final int itemCount;

  CustomListDetailsEntity({
    required this.createdBy,
    required this.description,
    required this.id,
    required this.items,
    required this.name,
    required this.itemCount,
  });
}
