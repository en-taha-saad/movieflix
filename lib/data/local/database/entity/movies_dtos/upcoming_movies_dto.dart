import 'package:floor/floor.dart';

@Entity(tableName: "UPCOMING_MOVIES")
class UpcomingMovieDto {
  final String title;
  final String originalLanguage;
  final String overview;
  final String imageUrl;
  final String date;
  @PrimaryKey(autoGenerate: false)
  final int id;
  UpcomingMovieDto(
    this.id,
    this.title,
    this.date,
    this.imageUrl,
    this.originalLanguage,
    this.overview,
  );
}
