import 'package:floor/floor.dart';

@Entity(tableName: "NOW_PLAYING_MOVIES")
class NowPlayingMovieDto {
  final String title;
  final String originalLanguage;
  final String overview;
  final String imageUrl;
  final String date;
  @PrimaryKey(autoGenerate: false)
  final int id;
  NowPlayingMovieDto(
    this.id,
    this.title,
    this.date,
    this.imageUrl,
    this.originalLanguage,
    this.overview,
  );
}
