import 'package:movieflix/data/local/database/entity/movies_dtos/now_playing_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/popular_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/top_rated_movies_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/upcoming_movies_dto.dart';
import 'package:movieflix/domain/entity/movie/movie_entity.dart';

extension MovieEntityExtension on MovieEntity {
  PopularMovieDto toPopularMovieDto() {
    return PopularMovieDto(
      id,
      title,
      formattedDate,
      imageUrl,
      originalLanguage,
      'overview',
    );
  }

  NowPlayingMovieDto toNowPlayingMovieDto() {
    return NowPlayingMovieDto(
      id,
      title,
      formattedDate,
      imageUrl,
      originalLanguage,
      'overview',
    );
  }

  TopRatedMovieDto toTopRatedMovieDto() {
    return TopRatedMovieDto(
      id,
      title,
      formattedDate,
      imageUrl,
      originalLanguage,
      'overview',
    );
  }

  UpcomingMovieDto toUpComingMovieDto() {
    return UpcomingMovieDto(
      id,
      title,
      formattedDate,
      imageUrl,
      originalLanguage,
      'overview',
    );
  }
}

extension MovieEntityListExtension on List<MovieEntity> {
  List<PopularMovieDto> toPopularMovieDtoList() {
    return map((movie) => movie.toPopularMovieDto()).toList();
  }

  List<NowPlayingMovieDto> toNowPlayingMovieDtoList() {
    return map((movie) => movie.toNowPlayingMovieDto()).toList();
  }

  List<TopRatedMovieDto> toTopRatedMovieDtoList() {
    return map((movie) => movie.toTopRatedMovieDto()).toList();
  }

  List<UpcomingMovieDto> toUpComingMovieDtoList() {
    return map((movie) => movie.toUpComingMovieDto()).toList();
  }
}
