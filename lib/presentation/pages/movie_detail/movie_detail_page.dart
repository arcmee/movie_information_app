import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_information_app/domain/entity/genre.dart';
import 'package:movie_information_app/domain/entity/movie_detail.dart';
import 'package:movie_information_app/domain/entity/production_company.dart';
import 'package:movie_information_app/presentation/pages/movie_detail/viewmodels/movie_detail_viewmodel.dart';
part 'layouts/main_image/main_image.dart';
part 'layouts/movie_information/movie_information.dart';
part 'layouts/popular_information/popular_information.dart';
part 'layouts/productions_information/productions_information.dart';
part 'layouts/movie_information/movie_genres.dart';
part 'layouts/popular_information/popular_information_squares.dart';

class MovieDetailPage extends ConsumerWidget {
  const MovieDetailPage(this.movieDetail, {super.key});
  final MovieDetail movieDetail;

  @override
  Widget build(BuildContext context, ref) {
    
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:
              movieDetail == null
                  ? CircularProgressIndicator()
                  : Column(
                    children: [
                      _MainImage(movieDetail),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            _MovieInformation(movieDetail),
                            Divider(),
                            _PopularInformation(movieDetail),
                            _ProductionsInformation(movieDetail.productionCompanies),
                          ],
                        ),
                      ),
                    ],
                  ),
        ),
      ),
    );
  }
}
