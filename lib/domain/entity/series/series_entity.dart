class SeriesEntity {
  final int id;
  final String name;
  final String imageUrl;
  final String firstAirDate;
  final double popularity;
  final double voteAverage;
  final String formattedDate;

  SeriesEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.firstAirDate,
    required this.popularity,
    required this.voteAverage,
    required this.formattedDate,
  });
}
