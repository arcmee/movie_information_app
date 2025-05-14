import 'package:flutter/material.dart';
part 'layouts/main_image/main_image.dart';
part 'layouts/movie_information/movie_information.dart';
part 'layouts/popular_information/popular_information.dart';
part 'layouts/productions_information/productions_information.dart';
part 'layouts/movie_information/movie_genres.dart';
part 'layouts/popular_information/popular_information_squares.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _MainImage(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    _MovieInformation(),
                    Divider(),
                    _PopularInformation(),
                    _ProductionsInformation(),
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
