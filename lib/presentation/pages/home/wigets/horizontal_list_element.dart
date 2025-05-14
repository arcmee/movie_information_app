part of 'horizontal_list.dart';

class _HorizontalListElement extends StatelessWidget {

  const _HorizontalListElement(this.movie);
  final Movie movie;
  final String baseUrl = 'https://image.tmdb.org/t/p/original';
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 500),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network('$baseUrl${movie.posterPath}',fit: BoxFit.fitHeight,)),
    );
  }
}