
import 'package:untitled2/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.image,
    required super.genderId,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        title: json['original_title'],
        image: json['poster_path'],
        genderId:List<int>.from(json['genre_ids'].map((e)=>e)),
        overview: json['overview'],
        voteAverage: json['vote_average'],
        releaseDate: json['release_date'],
      );
}
