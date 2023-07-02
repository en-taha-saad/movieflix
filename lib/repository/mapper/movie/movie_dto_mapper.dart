import 'package:movieflix/data/local/database/entity/movies_dtos/now_playing_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/popular_movie_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/top_rated_movies_dto.dart';
import 'package:movieflix/data/local/database/entity/movies_dtos/upcoming_movies_dto.dart';
import 'package:movieflix/domain/entity/movie/movie_entity.dart';
import 'package:movieflix/domain/utils/static.dart';

extension PopularMovieDtoExtension on PopularMovieDto {
  MovieEntity toEntity() {
    return MovieEntity(
      id: id.toInt(),
      title: title,
      imageUrl: "${Constants.imageUrl}$imageUrl",
      popularity: 0.0,
      releaseDate: date,
      voteAverage: 0.0,
      originalLanguage: originalLanguage,
      formattedDate: date,
    );
  }
}

extension UpcomingMovieDtoExtension on UpcomingMovieDto {
  MovieEntity toEntity() {
    return MovieEntity(
      id: id.toInt(),
      title: title,
      imageUrl: "${Constants.imageUrl}$imageUrl",
      popularity: 0.0,
      releaseDate: date,
      voteAverage: 0.0,
      originalLanguage: originalLanguage,
      formattedDate: date,
    );
  }
}

extension TopRatedMovieDtoExtension on TopRatedMovieDto {
  MovieEntity toEntity() {
    return MovieEntity(
      id: id.toInt(),
      title: title,
      imageUrl: "${Constants.imageUrl}$imageUrl",
      popularity: 0.0,
      releaseDate: date,
      voteAverage: 0.0,
      originalLanguage: originalLanguage,
      formattedDate: date,
    );
  }
}

extension NowPlayingMovieDtoExtension on NowPlayingMovieDto {
  MovieEntity toEntity() {
    return MovieEntity(
      id: id.toInt(),
      title: title,
      imageUrl: "${Constants.imageUrl}$imageUrl",
      popularity: 0.0,
      releaseDate: date,
      voteAverage: 0.0,
      originalLanguage: originalLanguage,
      formattedDate: date,
    );
  }
}

extension PopularMovieDtoListExtension on List<PopularMovieDto> {
  List<MovieEntity> toPopularMoviesEntity() {
    return map((movieDto) => movieDto.toEntity()).toList();
  }
}

extension UpcomingMovieDtoListExtension on List<UpcomingMovieDto> {
  List<MovieEntity> toUpcomingMoviesEntity() {
    return map((movieDto) => movieDto.toEntity()).toList();
  }
}

extension TopRatedMovieDtoListExtension on List<TopRatedMovieDto> {
  List<MovieEntity> toTopRatedMoviesEntity() {
    return map((movieDto) => movieDto.toEntity()).toList();
  }
}

extension NowPlayingMovieDtoListExtension on List<NowPlayingMovieDto> {
  List<MovieEntity> toNowPlayingMoviesEntity() {
    return map((movieDto) => movieDto.toEntity()).toList();
  }
}
