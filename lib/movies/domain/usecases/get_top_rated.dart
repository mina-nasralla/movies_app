import 'package:untitled2/movies/domain/entities/movie.dart';
import 'package:untitled2/movies/domain/repos/movies_repo.dart';

class GetTopRatedUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetTopRatedUseCase(this.baseMoviesRepo);

  Future<List<Movie>> execute() async {
    return await baseMoviesRepo.getTopRatedMovies();
  }
}
