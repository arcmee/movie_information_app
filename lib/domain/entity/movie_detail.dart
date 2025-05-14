import 'package:movie_information_app/data/dto/movie_detail_dto.dart';
import 'package:movie_information_app/domain/entity/production_company.dart';
import 'package:movie_information_app/domain/entity/genre.dart';


class MovieDetail {
  int id;
  String posterPath;
  String title;
  String releaseDate;
  int runtime;
  List<Genre> genres;
  String overview;
  double voteAverage;
  int voteCount;
  double popularity;
  int budget;
  int revenue;
  List<ProductionCompany> productionCompanies;

  MovieDetail(
    {
      required this.id,
      required this.posterPath,
      required this.title,
      required this.releaseDate,
      required this.runtime,
      required this.genres,
      required this.overview,
      required this.voteAverage,
      required this.voteCount,
      required this.popularity,
      required this.budget,
      required this.revenue,
      required this.productionCompanies,
    }
  );

  factory MovieDetail.fromDto(MovieDetailDto movieDetailDto){
    return MovieDetail(
      id : movieDetailDto.id,
      posterPath: movieDetailDto.posterPath,
      title: movieDetailDto.title,
      releaseDate: movieDetailDto.releaseDate,
      runtime: movieDetailDto.runtime,
      genres: movieDetailDto.genres.map((e){
        return Genre.fromJson(e);
      }).toList(),
      overview: movieDetailDto.overview,
      voteAverage: movieDetailDto.voteAverage,
      voteCount: movieDetailDto.voteCount,
      popularity: movieDetailDto.popularity,
      budget: movieDetailDto.budget,
      revenue: movieDetailDto.revenue,
      productionCompanies: movieDetailDto.productionCompanies.map((e){
        return ProductionCompany.fromJson(e);
      }).toList(),
    );
  }
}