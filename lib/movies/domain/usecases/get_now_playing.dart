import 'package:untitled2/movies/domain/entities/movie.dart';
import 'package:untitled2/movies/domain/repos/movies_repo.dart';

class GetNowPlayingUseCase {
  final BaseMoviesRepo baseMoviesRepo;

  GetNowPlayingUseCase(this.baseMoviesRepo);

  Future<List<Movie>> execute() async {
    return await baseMoviesRepo.getNowPlaying();
  }
}
