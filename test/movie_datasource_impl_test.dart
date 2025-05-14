import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_information_app/data/data_source/movie_datasource_impl.dart';

void main() {
  test('movie detail dto test', () async {
    await dotenv.load(fileName: '.env');
    final MovieDatasourceImpl movieDatasourceImpl = MovieDatasourceImpl();
    final movieDetailDto = await movieDatasourceImpl.fetchMovieDetail(112);
    if(movieDetailDto == null){
      fail('결과르 가져오지 못했음');
    }
    print(movieDetailDto.id);
    expect(movieDetailDto.id == 112, true);
  });

  test('movie response dto test', () async {
    await dotenv.load(fileName: '.env');
    final MovieDatasourceImpl movieDatasourceImpl = MovieDatasourceImpl();
    final movieResponseDto = await movieDatasourceImpl.fetchNowPlayingMovies();
    if(movieResponseDto == null){
      fail('결과르 가져오지 못했음');
    }
    print(movieResponseDto.results.length);
    expect(movieResponseDto.results.isNotEmpty, true);
  });
}