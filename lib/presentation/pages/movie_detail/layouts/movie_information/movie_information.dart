part of '../../movie_detail_page.dart';

class _MovieInformation extends StatelessWidget {
  const _MovieInformation(this.movieDetail);
  final MovieDetail movieDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(child: Text(movieDetail.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)),
              Text(movieDetail.releaseDate),
            ],
          ),
          Text('${movieDetail.runtime}분'),
          Divider(),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: double.infinity, maxHeight: 30),
            child: _MovieGenres(movieDetail.genres)
          ),
          Divider(),
          Text(movieDetail.overview),
        ],
      ),
    );
  }
}