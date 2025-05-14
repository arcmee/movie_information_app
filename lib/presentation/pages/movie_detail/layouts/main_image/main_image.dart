part of '../../movie_detail_page.dart';

class _MainImage extends StatelessWidget {
  const _MainImage(this.movieDetail, {super.key});
  final MovieDetail movieDetail;
  final String baseUrl = 'https://image.tmdb.org/t/p/w400';
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'tapped-image-${movieDetail.id}',
      child: Container(
        width: double.infinity,
        child: Image.network(
          '$baseUrl${movieDetail.posterPath}',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
