import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_information_app/data/data_source/movie_datasource.dart';
import 'package:movie_information_app/data/data_source/movie_datasource_impl.dart';
import 'package:movie_information_app/domain/repository/movie_repository.dart';
import 'package:movie_information_app/domain/repository/movie_repository_impl.dart';
import 'package:movie_information_app/domain/usecase/fetch_movie_detail_usecase.dart';
import 'package:movie_information_app/domain/usecase/fetch_now_playing_movies_usecase.dart';
import 'package:movie_information_app/domain/usecase/fetch_popular_movies_usecase.dart';
import 'package:movie_information_app/domain/usecase/fetch_top_rated_movies_usecase.dart';
import 'package:movie_information_app/domain/usecase/fetch_upcoming_movies_usecase.dart';

final _movieDataSourceProvider = Provider<MovieDataSource>((ref) {
  return MovieDatasourceImpl();
});

final _movieRepositoryProvider = Provider<MovieRepository>((ref) {
  final dataSource = ref.read(_movieDataSourceProvider);
  return MovieRepositoryImpl(dataSource);
});

final fetchMovieDetailProvider = Provider((ref){
  final movieRepository = ref.read(_movieRepositoryProvider);
  return FetchMovieDetailUsecase(movieRepository);
});

final fetchNowPlayingMoviesUsecase = Provider((ref){
  final movieRepository = ref.read(_movieRepositoryProvider);
  return FetchNowPlayingMoviesUsecase(movieRepository);
});

final fetchPopularMoviesUsecase = Provider((ref){
  final movieRepository = ref.read(_movieRepositoryProvider);
  return FetchPopularMoviesUsecase(movieRepository);
});

final fetchTopRatedMoviesUsecase = Provider((ref){
  final movieRepository = ref.read(_movieRepositoryProvider);
  return FetchNowPlayingMoviesUsecase(movieRepository);
});

final fetchUpcomingMoviesUsecase = Provider((ref){
  final movieRepository = ref.read(_movieRepositoryProvider);
  return FetchNowPlayingMoviesUsecase(movieRepository);
});
