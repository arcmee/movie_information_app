
import 'package:movie_information_app/domain/entity/movie.dart';
import 'package:movie_information_app/domain/repository/movie_repository.dart';

class FetchTopRatedMoviesUsecase{
  final MovieRepository _movieRepository;
  FetchTopRatedMoviesUsecase(this._movieRepository);

  Future<List<Movie>> execute() async {
    return await _movieRepository.fetchTopRatedMovies() ?? [];
  }
}