import 'package:flutter/material.dart';
part 'layouts/main_image/main_image.dart';
part 'layouts/movie_information/movie_information.dart';
part 'layouts/popular_information/popular_information.dart';
part 'layouts/productions_information/productions_information.dart';

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
              _MovieInformation(),
              _PopularInformation(),
              _ProductionsInformation(),
            ],
          ),
        ),
      ),
    );
  }
}
