import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_information_app/domain/entity/movie_detail.dart';
import 'package:movie_information_app/presentation/providers.dart';

class MovieDetailViewmodel extends Notifier<MovieDetail?>{
  @override
  MovieDetail? build() {
    return null;
  }

  Future<void> fetchMovie(int id) async {
    final fetchMovieUsecase = ref.read(fetchMovieDetailUsecase);
    final result = await fetchMovieUsecase.execute(id);
    state = result;
  }

}

final movieDetailViewmodelProvider = NotifierProvider<MovieDetailViewmodel, MovieDetail?>(() {
  return MovieDetailViewmodel();
},);