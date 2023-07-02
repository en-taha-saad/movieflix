import 'package:movieflix/domain/entity/series/episode_entity.dart';

class SessionDetailsEntity {
  final String airDate;
  final List<EpisodeEntity> episodes;
  final String id;
  final int seasonId;
  final String name;
  final String overview;
  final String imageUrl;
  final int seasonNumber;

  SessionDetailsEntity({
    required this.airDate,
    required this.episodes,
    required this.id,
    required this.seasonId,
    required this.name,
    required this.overview,
    required this.imageUrl,
    required this.seasonNumber,
  });
}
