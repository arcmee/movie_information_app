import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_information_app/domain/entity/movie.dart';
import 'package:movie_information_app/presentation/provider.dart';

class PopularMoviesViewmodel extends Notifier<List<Movie>?>{
  @override
  List<Movie>? build() {
    fetchMovies();
    return [];
  }

  Future<void> fetchMovies() async {
    final fetchMoviesUsecase = ref.read(fetchPopularMoviesUsecase);
    final result = await fetchMoviesUsecase.execute();
    state = result;
  }

}