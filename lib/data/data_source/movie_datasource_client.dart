import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MovieDatasourceClient {
  Dio get client => _client;
  String? get beaererToken => _bearerToken;
  late String? _bearerToken;
  late Dio _client;
  String baseUrl = 'https://api.themoviedb.org/3/movie';

  MovieDatasourceClient() {
    _bearerToken = 'bearer ${dotenv.env['tmdbAPIkey']}';
    _client = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        validateStatus: (status) => true,
        headers: {'Authorization': _bearerToken},
        queryParameters: {'language': 'ko-KR'},
      ),
    );
  }
}
