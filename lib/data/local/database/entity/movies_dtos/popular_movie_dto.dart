import 'package:floor/floor.dart';

@Entity(tableName: "POPULAR_MOVIES")
class PopularMovieDto {
  final String title;
  final String originalLanguage;
  final String overview;
  final String imageUrl;
  final String date;
  @PrimaryKey(autoGenerate: false)
  final int id;
  PopularMovieDto(
    this.id,
    this.title,
    this.date,
    this.imageUrl,
    this.originalLanguage,
    this.overview,
  );
}
