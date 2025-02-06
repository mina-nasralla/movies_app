import 'package:dartz/dartz.dart';
import 'package:untitled2/movies/domain/entities/movie.dart';
import 'package:untitled2/movies/domain/repos/movies_repo.dart';

import '../../../Core/Error/failuer.dart';

class GetTopRatedUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetTopRatedUseCase(this.baseMoviesRepo);

  Future<Either<Failure, List<Movie>>>  execute() async {
    return await baseMoviesRepo.getTopRatedMovies();
  }
}
