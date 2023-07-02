class SeasonEntity {
  final int id;
  final int episodeCount;
  final String name;
  final String overview;
  final String imageUrl;
  final int seasonNumber;
  final String airDate;

  SeasonEntity({
    required this.id,
    required this.episodeCount,
    required this.name,
    required this.overview,
    required this.imageUrl,
    required this.seasonNumber,
    required this.airDate,
  });
}
