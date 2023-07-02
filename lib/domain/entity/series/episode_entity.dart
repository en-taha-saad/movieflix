class EpisodeEntity {
  final int id;
  final String imageUrl;
  final int episodeNumber;
  final String name;
  final String overview;
  final int runtime;
  final int seasonNumber;
  final double voteAverage;

  EpisodeEntity({
    required this.id,
    required this.imageUrl,
    required this.episodeNumber,
    required this.name,
    required this.overview,
    required this.runtime,
    required this.seasonNumber,
    required this.voteAverage,
  });
}
