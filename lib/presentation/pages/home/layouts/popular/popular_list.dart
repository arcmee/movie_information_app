import 'package:flutter/material.dart';
import 'package:movie_information_app/domain/entity/movie.dart';
part 'popular_list_element.dart';

class PopularList extends StatelessWidget {
  const PopularList(this.movies, {super.key});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.separated
    (
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return _PopularListElement(index : index+1, movie: movies[index],);
      },
      scrollDirection: Axis.horizontal, 
      separatorBuilder: (BuildContext context, int index) { 
        return SizedBox(width: 20,);
      },
    );
  }
}