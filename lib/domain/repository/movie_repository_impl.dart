import 'package:movie_information_app/data/data_source/movie_datasource.dart';
import 'package:movie_information_app/domain/entity/movie.dart';
import 'package:movie_information_app/domain/entity/movie_detail.dart';
import 'package:movie_information_app/domain/repository/movie_repository.dart';


class MovieRepositoryImpl implements MovieRepository{
  MovieDataSource _movieDataSource;
  MovieRepositoryImpl(this._movieDataSource);
  @override
  Future<MovieDetail?> fetchMovieDetail(int id) async {
    final result = await _movieDataSource.fetchMovieDetail(id);
    if(result == null) return null;

    return MovieDetail.fromDto(result);
  }

  @override
  Future<List<Movie>?> fetchNowPlayingMovies() async {
    final result = await _movieDataSource.fetchNowPlayingMovies();
    if(result == null) return null;
    return result.results.map((e) {
      return Movie.fromJson(e);
    }).toList(); 
  }

  @override
  Future<List<Movie>?> fetchPopularMovies() async {
    final result = await _movieDataSource.fetchPopularMovies();
    if(result == null) return null;
    return result.results.map((e) {
      return Movie.fromJson(e);
    }).toList(); 
  }

  @override
  Future<List<Movie>?> fetchTopRatedMovies() async {
    final result = await _movieDataSource.fetchTopRatedMovies();
    if(result == null) return null;
    return result.results.map((e) {
      return Movie.fromJson(e);
    }).toList(); 
  }

  @override
  Future<List<Movie>?> fetchUpcomingMovies() async {
    final result = await _movieDataSource.fetchUpcomingMovies();
    if(result == null) return null;
    return result.results.map((e) {
      return Movie.fromJson(e);
    }).toList(); 
  }

}