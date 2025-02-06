import 'package:dartz/dartz.dart';
import 'package:untitled2/movies/data/datasource/movie_data_source_remote.dart';
import 'package:untitled2/movies/domain/entities/movie.dart';

import '../../../Core/Error/failuer.dart';

abstract class BaseMoviesRepo {
  Future<Either<Failure, List<Movie>>> getNowPlaying();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
