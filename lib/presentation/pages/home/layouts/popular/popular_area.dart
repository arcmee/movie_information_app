part of '../../home.dart';

class _PopularArea extends StatelessWidget {
  const _PopularArea(this.movies);
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints( maxHeight: 200, maxWidth: double.infinity),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('인기순', style : Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 5),
        Expanded(child: PopularList(movies)),
      ],),
    );
  }
}