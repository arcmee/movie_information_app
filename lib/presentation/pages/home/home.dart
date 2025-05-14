import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_information_app/domain/entity/movie.dart';
import 'package:movie_information_app/presentation/pages/home/viewmodels/now_playing_viewmodel.dart';
import 'package:movie_information_app/presentation/pages/home/viewmodels/popular_movies_viewmodel.dart';
import 'package:movie_information_app/presentation/pages/home/viewmodels/top_rated_viewmodel.dart';
import 'package:movie_information_app/presentation/pages/home/viewmodels/upcoming_viewmodel.dart';
import 'package:movie_information_app/presentation/pages/home/wigets/horizontal_list.dart';
import 'package:movie_information_app/presentation/pages/home/layouts/popular/popular_list.dart';
import 'package:movie_information_app/domain/entity/movie.dart';
import 'package:movie_information_app/domain/entity/movie_detail.dart';
part 'layouts/main/main_area.dart';
part 'layouts/now_playing/now_playing_area.dart';
part 'layouts/popular/popular_area.dart';
part 'layouts/rating/rating_area.dart';
part 'layouts/upcoming/upcoming_area.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Consumer(
              builder: (context, ref, child) {
                final popularMovies = ref.watch(popularMoviesViewmodelProvider);
                final nowPlayingMovies = ref.watch(nowPlayingViewmodelProvider);
                final topRatedMovies = ref.watch(topRatedViewmodelViewmodelProvider);
                final upcomingMovies = ref.watch(upcomingViewmodelProvider);

                return Column(
                  children: [
                    popularMovies.isEmpty ? CircularProgressIndicator() : _MainArea(popularMovies.first.posterPath),
                    SizedBox(height: 20,),
                    nowPlayingMovies.isEmpty ? CircularProgressIndicator() : _NowPlayingArea(nowPlayingMovies),
                    SizedBox(height: 20,),
                    popularMovies.isEmpty ? CircularProgressIndicator() : _PopularArea(popularMovies),
                    SizedBox(height: 20,),
                    topRatedMovies.isEmpty ? CircularProgressIndicator() : _RatingArea(topRatedMovies),
                    SizedBox(height: 20,),
                    upcomingMovies.isEmpty ? CircularProgressIndicator() : _UpcomingArea(upcomingMovies),
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
