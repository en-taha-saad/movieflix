import 'package:floor/floor.dart';

@Entity(tableName: "POPULAR_SERIES")
class PopularSeriesDto {
  final String title;
  final String originalLanguage;
  final String overview;
  final String imageUrl;
  final String date;
  final double popularity;
  final double voteAverage;
  @PrimaryKey(autoGenerate: false)
  final int id;
  PopularSeriesDto(
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
