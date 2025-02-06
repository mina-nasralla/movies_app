import 'package:dartz/dartz.dart';
import 'package:untitled2/Core/Error/exceptions.dart';
import 'package:untitled2/Core/Error/failuer.dart';
import 'package:untitled2/movies/domain/entities/movie.dart';
import 'package:untitled2/movies/domain/repos/movies_repo.dart';

import '../datasource/movie_data_source_remote.dart';

class MovieRepo extends BaseMoviesRepo {
  final BaseMovieDataSource baseMovieDataSource;

  MovieRepo(this.baseMovieDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    final result = await baseMovieDataSource.getNowPlaying();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(NetworkFailure(failure.errorMessage.msg));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieDataSource.getPopular();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(NetworkFailure(failure.errorMessage.msg));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieDataSource.getTopRated();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(NetworkFailure(failure.errorMessage.msg));
    }
  }
}
