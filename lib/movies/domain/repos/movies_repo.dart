import 'package:untitled2/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepo {
  Future<List<Movie>> getNowPlaying();

  Future<List<Movie>> getPopularMovies();

  Future<List<Movie>> getTopRatedMovies();
}

