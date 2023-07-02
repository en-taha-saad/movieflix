import 'package:movieflix/data/remote/resources/series/session_details_resource.dart';
import 'package:movieflix/domain/entity/series/season_details_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';
import './episode_resource_mapper.dart';

extension SessionDetailsResourceExtensions on SessionDetailsResource {
  SessionDetailsEntity toEntity() {
    return SessionDetailsEntity(
      airDate: airDate.orEmpty(),
      episodes: episodes?.map((item) => (item?.toEntity())!).toList() ?? [],
      id: id.orEmpty(),
      seasonId: seasonId.orZero(),
      name: name.orEmpty(),
      overview: overview.orEmpty(),
      imageUrl: "${Constants.imageUrl}$posterPath",
      seasonNumber: seasonNumber.orZero(),
    );
  }
}
