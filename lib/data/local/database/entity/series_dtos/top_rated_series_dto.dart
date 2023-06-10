import 'package:floor/floor.dart';

@Entity(tableName: "TOP_RATED_SERIES")
class TopRatedSeriesDto {
  final String title;
  final String originalLanguage;
  final String overview;
  final String imageUrl;
  final String date;
  final double popularity;
  final double voteAverage;
  @PrimaryKey(autoGenerate: false)
  final int id;
  TopRatedSeriesDto(
    this.id,
    this.title,
    this.date,
    this.imageUrl,
    this.originalLanguage,
    this.overview,
    this.popularity,
    this.voteAverage,
  );
}
