part of 'popular_list.dart';

class _PopularListElement extends StatelessWidget {
  _PopularListElement({required this.index, required this.movie, super.key});
  int index;
  Movie movie;
  final String baseUrl = 'https://image.tmdb.org/t/p/w400';
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
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
              // 에러 처리 or 토스트 알림
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('영화 정보를 불러오지 못했습니다')));
            }
          },
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 500),
            child: Container(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      '$baseUrl${movie.posterPath}',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    left: -30,
                    bottom: -30,
                    child: Text(
                      index.toString(),
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
