import 'package:movieflix/domain/entity/series/season_entity.dart';

class SeriesDetailsEntity {
  final int id;
  final String name;
  final bool adult;
  final String imageUrl;
  final String firstAirDate;
  final String genres;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final String overview;
  final double popularity;
  final List<SeasonEntity> seasons;
  final String type;
  final int voteAverage;

  SeriesDetailsEntity({
    required this.id,
    required this.name,
    required this.adult,
    required this.imageUrl,
    required this.firstAirDate,
    required this.genres,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.overview,
    required this.popularity,
    required this.seasons,
    required this.type,
    required this.voteAverage,
  });
}
