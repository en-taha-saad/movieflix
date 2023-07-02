import 'package:movieflix/data/remote/resources/movie/movie_details_resource.dart';
import 'package:movieflix/domain/entity/movie/movie_details_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension MovieDetailsResourceExtension on MovieDetailsResource {
  MovieDetailsEntity toEntity() {
    return MovieDetailsEntity(
      id: id.orZero(),
      imageUrl: "${Constants.imageUrl}${backdropPath.orEmpty()}",
      adult: adult.orFalse(),
      genres: (genres
          ?.map((e) {
            return e?.name;
          })
          .toList()
          .join(', '))!,
      imdbId: imdbId.orEmpty(),
      overview: overview.orEmpty(),
      date: releaseDate.orEmpty(),
      runtime: runtime.orZero(),
      title: title.orEmpty(),
      video: video.orFalse(),
      voteAverage: voteAverage.orZero(),
    );
  }
}
