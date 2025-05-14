
import 'package:movie_information_app/data/data_source/movie_datasource.dart';
import 'package:movie_information_app/data/data_source/movie_datasource_client.dart';
import 'package:movie_information_app/data/dto/movie_detail_dto.dart';
import 'package:movie_information_app/data/dto/movie_response_dto.dart';

class MovieDatasourceImpl implements MovieDataSource{
  final client = MovieDatasourceClient();
  @override
  Future<MovieDetailDto?> fetchMovieDetail(int id) async {
    final response = await client.client.get('${id}');
    if(response.statusCode == 200){
      return MovieDetailDto.fromJson((response.data) as Map<String, dynamic>);
    }
    return null;
  }

  @override
  Future<MovieResponseDto?> fetchNowPlayingMovies() async {
    final response = await client.client.get('/now_playing');
    if(response.statusCode == 200){
      return MovieResponseDto.fromJson((response.data) as Map<String, dynamic>);
    }
    return null;
  }

  @override
  Future<MovieResponseDto?> fetchPopularMovies() async {
    final response = await client.client.get('/popular');
    if(response.statusCode == 200){
      return MovieResponseDto.fromJson((response.data) as Map<String, dynamic>);
    }
    return null;
  }

  @override
  Future<MovieResponseDto?> fetchTopRatedMovies() async {
    final response = await client.client.get('/top_rated');
    if(response.statusCode == 200){
      return MovieResponseDto.fromJson((response.data) as Map<String, dynamic>);
    }
    return null;
  }

  @override
  Future<MovieResponseDto?> fetchUpcomingMovies() async {
    final response = await client.client.get('/upcoming');
    if(response.statusCode == 200){
      return MovieResponseDto.fromJson((response.data) as Map<String, dynamic>);
    }
    return null;
    
  }
}