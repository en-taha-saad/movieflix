import 'package:movieflix/data/local/database/entity/movies_dtos/now_playing_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/popular_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/top_rated_movies_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/upcoming_movies_dto.dart';
import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';
import 'package:movieflix/data/remote/resources/pagination.dart';
import 'package:movieflix/domain/entity/movie/movie_entity.dart';
import 'package:movieflix/domain/utils/extensions.dart';
import 'package:movieflix/domain/utils/static.dart';

extension MovieResourceExtension on MovieResource {
  MovieEntity toEntity() {
    return MovieEntity(
      id: id.orZero(),
      title: title.orEmpty(),
      imageUrl: "${Constants.imageUrl}$posterPath",
      popularity: popularity.orZero(),
      releaseDate: releaseDate.orEmpty(),
      voteAverage: voteAverage.orZero(),
      originalLanguage: originalLanguage.orEmpty(),
      formattedDate: '',
    );
  }
}

extension PaginationMovieResourceExtension on Pagination<MovieResource> {
  List<MovieEntity> toEntity() {
    return items
            ?.whereType<MovieResource>()
            .map((movieResource) => movieResource.toEntity())
            .whereType<MovieEntity>()
            .toList() ??
        [];
  }
}

extension MovieResourcePopularMovieDtoExtension on MovieResource {
  PopularMovieDto toPopularMovieDto() {
    return PopularMovieDto(
      id.orZero().toInt(),
      title.orEmpty(),
      releaseDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
    );
  }
}

extension ListMovieResourcePopularMovieDtoExtension on List<MovieResource>? {
  List<PopularMovieDto> toPopularMovieDto() {
    return this
            ?.map((movieResource) => movieResource.toPopularMovieDto())
            .toList() ??
        [];
  }
}

extension MovieResourceUpcomingMovieDtoExtension on MovieResource {
  UpcomingMovieDto toUpcomingMovieDto() {
    return UpcomingMovieDto(
      id.orZero().toInt(),
      title.orEmpty(),
      releaseDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
    );
  }
}

extension PaginationMovieResourceUpcomingMovieDtoExtension
    on Pagination<MovieResource> {
  List<UpcomingMovieDto?> toUpcomingMovieDto() {
    return items
            ?.map((movieResource) => movieResource?.toUpcomingMovieDto())
            .toList() ??
        [];
  }
}

extension MovieResourceTopRatedMovieDtoExtension on MovieResource {
  TopRatedMovieDto toTopRatedMovieDto() {
    return TopRatedMovieDto(
      id.orZero().toInt(),
      title.orEmpty(),
      releaseDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
    );
  }
}

extension ListMovieResourceTopRatedMovieDtoExtension on List<MovieResource>? {
  List<TopRatedMovieDto> toTopRatedMovieDto() {
    return this
            ?.map((movieResource) => movieResource.toTopRatedMovieDto())
            .toList() ??
        [];
  }
}

extension MovieResourceNowPlayingMovieDtoExtension on MovieResource {
  NowPlayingMovieDto toNowPlayingMovieDto() {
    return NowPlayingMovieDto(
      id.orZero().toInt(),
      title.orEmpty(),
      releaseDate.orEmpty(),
      "${Constants.imageUrl}$posterPath",
      originalLanguage.orEmpty(),
      overview.orEmpty(),
    );
  }
}

extension PaginationMovieResourceNowPlayingMovieDtoExtension
    on Pagination<MovieResource> {
  List<NowPlayingMovieDto?> toNowPlayingMovieDto() {
    return items
            ?.map((movieResource) => movieResource?.toNowPlayingMovieDto())
            .toList() ??
        [];
  }
}
