import 'package:flutter/material.dart';
import 'package:movie_information_app/presentation/pages/home/wigets/horizontal_list.dart';
import 'package:movie_information_app/presentation/pages/home/layouts/popular/popular_list.dart';
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
            child: Column(
              
              children: [
                _MainArea(),
                SizedBox(height: 20,),
                _NowPlayingArea(),
                SizedBox(height: 20,),
                _PopularArea(),
                SizedBox(height: 20,),
                _RatingArea(),
                SizedBox(height: 20,),
                _UpcomingArea(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
