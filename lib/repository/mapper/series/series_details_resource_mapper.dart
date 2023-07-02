import 'package:movieflix/data/remote/resources/series/series_details_resource.dart';
import 'package:movieflix/domain/entity/series/series_details_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';
import './season_resource_mapper.dart';

extension SeriesDetailsResourceExtensions on SeriesDetailsResource {
  SeriesDetailsEntity toEntity() {
    return SeriesDetailsEntity(
      id: id.orZero(),
      name: name.orEmpty(),
      adult: adult.orFalse(),
      imageUrl: "${Constants.imageUrl}${posterPath.orEmpty()}",
      firstAirDate: firstAirDate.orEmpty(),
      genres: genres?.map((genre) => genre?.name.orEmpty()).join() ?? '',
      numberOfEpisodes: numberOfEpisodes.orZero(),
      numberOfSeasons: numberOfSeasons.orZero(),
      overview: overview.orEmpty(),
      popularity: popularity.orZero(),
      seasons: seasons?.map((season) => (season?.toEntity())!).toList() ?? [],
      type: type.orEmpty(),
      voteAverage: voteAverage.orZero(),
    );
  }
}
