class MovieEntity {
  final int id;
  final String title;
  final String imageUrl;
  final double popularity;
  final String releaseDate;
  final double voteAverage;
  final String originalLanguage;
  final String formattedDate;

  MovieEntity({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.popularity,
    required this.releaseDate,
    required this.voteAverage,
    required this.originalLanguage,
    required this.formattedDate,
  });
}
