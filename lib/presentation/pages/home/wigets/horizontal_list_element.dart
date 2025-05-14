part of 'horizontal_list.dart';

class _HorizontalListElement extends ConsumerWidget {
  const _HorizontalListElement(this.movie);
  final Movie movie;
  final String baseUrl = 'https://image.tmdb.org/t/p/w400';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        await ref
            .read(movieDetailViewmodelProvider.notifier)
            .fetchMovie(movie.id);
        final movieDetail = ref.read(movieDetailViewmodelProvider);

        if (movieDetail != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailPage(movieDetail),
            ),
          );
        } else {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('영화 정보를 불러오지 못했습니다')));
        }
      },
      child: Hero(
        tag: 'tapped-image-${movie.id}',
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 500),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              '$baseUrl${movie.posterPath}',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
