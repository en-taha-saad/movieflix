import 'package:movieflix/data/remote/resources/series/episode_resource.dart';
import 'package:movieflix/domain/entity/series/episode_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension EpisodeResourceExtensions on EpisodeResource {
  EpisodeEntity toEntity() {
    return EpisodeEntity(
      id: id.orZero(),
      imageUrl: "${Constants.imageUrl}${stillPath.orEmpty()}",
      episodeNumber: episodeNumber.orZero(),
      name: name.orEmpty(),
      overview: overview.orEmpty(),
      runtime: runtime.orZero(),
      seasonNumber: seasonNumber.orZero(),
      voteAverage: voteAverage.orZero(),
    );
  }
}
