import 'package:movie_information_app/domain/entity/movie.dart';
import 'package:movie_information_app/domain/repository/movie_repository.dart';

class FetchUpcomingMoviesUsecase {
  final MovieRepository _movieRepository;
  FetchUpcomingMoviesUsecase(this._movieRepository);

  Future<List<Movie>> execute() async {
    return await _movieRepository.fetchUpcomingMovies() ?? [];
  }
}