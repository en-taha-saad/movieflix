class MovieDetailsEntity {
  final int id;
  final String imageUrl;
  final bool adult;
  final String genres;
  final String imdbId;
  final String overview;
  final String date;
  final int runtime;
  final String title;
  final bool video;
  final double voteAverage;

  MovieDetailsEntity({
    required this.id,
    required this.imageUrl,
    required this.adult,
    required this.genres,
    required this.imdbId,
    required this.overview,
    required this.date,
    required this.runtime,
    required this.title,
    required this.video,
    required this.voteAverage,
  });
}
