import 'package:floor/floor.dart';

@Entity(tableName: "TOP_RATED_MOVIES")
class TopRatedMovieDto {
  final String title;
  final String originalLanguage;
  final String overview;
  final String imageUrl;
  final String date;
  @PrimaryKey(autoGenerate: false)
  final int id;
  TopRatedMovieDto(
    this.id,
    this.title,
    this.date,
    this.imageUrl,
    this.originalLanguage,
    this.overview,
  );
}
