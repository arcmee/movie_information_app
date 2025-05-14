part of '../../home.dart';


class _MainArea extends StatelessWidget {
  const _MainArea(this.movie);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('가장 인기있는', style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 5),
        Consumer(
          builder: (context, ref, child) {
            return GestureDetector(
              onTap: () async {
              await ref.read(movieDetailViewmodelProvider.notifier).fetchMovie(movie.id);
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
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('영화 정보를 불러오지 못했습니다')),
                );
              }
            },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://image.tmdb.org/t/p/w400${movie.posterPath}',fit: BoxFit.fitWidth,
                width: double.infinity,),
              ),
            );
          }
        ),
      ],
    );
  }
}
