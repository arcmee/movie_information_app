part of '../../home.dart';

class _RatingArea extends StatelessWidget {
  
  const _RatingArea(this.movies);
  final List<Movie> movies;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints( maxHeight: 200, maxWidth: double.infinity),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('평점 높은 순', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          Expanded(child: HorizontalList(movies)),
        ],
      ),
    );
  }
}