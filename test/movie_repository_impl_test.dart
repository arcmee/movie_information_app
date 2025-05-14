import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_information_app/data/data_source/movie_datasource_impl.dart';
import 'package:movie_information_app/domain/repository/movie_repository_impl.dart';

void main() {
  test('repository movie detail test', () async {
    await dotenv.load(fileName: '.env');
    final MovieDatasourceImpl movieDatasourceImpl = MovieDatasourceImpl();
    final movieRepositoryImpl = MovieRepositoryImpl(movieDatasourceImpl);
    final result = await movieRepositoryImpl.fetchMovieDetail(1241436);
    if(result == null){
      fail('정보를 가져오지 못했음');
    }
    print(result.genres.first.name);
    expect(result.id == 1241436, true);
    expect(result.genres.isNotEmpty, true);
    expect(result.productionCompanies.isNotEmpty, true);
  });

  test('repository movie nowplaying test', () async {
    await dotenv.load(fileName: '.env');
    final MovieDatasourceImpl movieDatasourceImpl = MovieDatasourceImpl();
    final movieRepositoryImpl = MovieRepositoryImpl(movieDatasourceImpl);
    final result = await movieRepositoryImpl.fetchNowPlayingMovies();
    if(result == null){
      fail('정보를 가져오지 못했음');
    }
    print(result.first.posterPath);
    expect(result.isNotEmpty, true);
  });

  test('repository movie toprated test', () async {
    await dotenv.load(fileName: '.env');
    final MovieDatasourceImpl movieDatasourceImpl = MovieDatasourceImpl();
    final movieRepositoryImpl = MovieRepositoryImpl(movieDatasourceImpl);
    final result = await movieRepositoryImpl.fetchTopRatedMovies();
    if(result == null){
      fail('정보를 가져오지 못했음');
    }
    print(result.first.id);
    expect(result.first.id == 278, true);
  });
}