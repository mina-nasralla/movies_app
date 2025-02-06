import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String image;
  final List<int> genderId;
  final String overview;
  final double voteAverage;
  final double releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.image,
    required this.genderId,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        image,
        genderId,
        overview,
        voteAverage,
        releaseDate,
      ];
}
