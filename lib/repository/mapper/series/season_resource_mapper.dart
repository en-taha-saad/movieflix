import 'package:movieflix/data/remote/resources/series/season_resource.dart';
import 'package:movieflix/domain/entity/series/season_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension SeasonResourceExtensions on SeasonResource {
  SeasonEntity toEntity() {
    return SeasonEntity(
      id: id.orZero(),
      episodeCount: episodeCount.orZero(),
      name: name.orEmpty(),
      overview: overview.orEmpty(),
      imageUrl: '${Constants.imageUrl}${posterPath.orEmpty()}',
      seasonNumber: seasonNumber.orZero(),
      airDate: airDate.orEmpty(),
    );
  }
}
