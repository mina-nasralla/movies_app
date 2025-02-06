import 'package:untitled2/movies/domain/entities/movie.dart';
import 'package:untitled2/movies/domain/repos/movies_repo.dart';

class GetPopularUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetPopularUseCase(this.baseMoviesRepo);

  Future<List<Movie>> execute() async {
    return await baseMoviesRepo.getPopularMovies();
  }
}
