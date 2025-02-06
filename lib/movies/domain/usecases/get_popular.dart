import 'package:dartz/dartz.dart';
import 'package:untitled2/movies/domain/entities/movie.dart';
import 'package:untitled2/movies/domain/repos/movies_repo.dart';

import '../../../Core/Error/failuer.dart';

class GetPopularUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetPopularUseCase(this.baseMoviesRepo);

  Future<Either<Failure, List<Movie>>>  execute() async {
    return await baseMoviesRepo.getPopularMovies();
  }
}
