import 'package:movieflix/domain/entity/series/image_entity.dart';

class ImagesEntity {
  final List<ImageEntity> backdrops;
  final int? id;
  final List<ImageEntity> posters;
  final List<ImageEntity> stills;

  ImagesEntity({
    required this.backdrops,
    required this.id,
    required this.posters,
    required this.stills,
  });
}
