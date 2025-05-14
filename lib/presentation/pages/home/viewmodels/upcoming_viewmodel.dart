import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_information_app/domain/entity/movie.dart';
import 'package:movie_information_app/presentation/providers.dart';

class UpcomingViewmodel extends Notifier<List<Movie>>{
  @override
  List<Movie> build() {
    fetchMovies();
    return [];
  }

  Future<void> fetchMovies() async {
    final fetchMoviesUsecase = ref.read(fetchUpcomingMoviesUsecase);
    final result = await fetchMoviesUsecase.execute();
    state = result;
  }

}

final upcomingViewmodelProvider = NotifierProvider<UpcomingViewmodel, List<Movie>>(() {
    return UpcomingViewmodel();
  },
);