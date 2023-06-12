// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:movieflix/data/remote/resources/movie/movie_resource.dart';

part 'person_movie_credits_resource.g.dart';

@JsonSerializable()
class PersonMovieCreditsResource {
  @JsonKey(name: 'cast')
  final List<MovieResource?>? cast;
  @JsonKey(name: 'id')
  final int? id;

  PersonMovieCreditsResource({this.cast, this.id});

  factory PersonMovieCreditsResource.fromJson(Map<String, dynamic> json) =>
      _$PersonMovieCreditsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$PersonMovieCreditsResourceToJson(this);
}
