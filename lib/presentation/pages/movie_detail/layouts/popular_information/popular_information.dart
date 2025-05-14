part of '../../movie_detail_page.dart';

class _PopularInformation extends StatelessWidget {
  const _PopularInformation(this.movieDetail);
  final MovieDetail movieDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('흥행 정보', style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 10,),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: double.infinity, maxHeight: 70),
            child: _PopularInformationSquares(movieDetail)
          ),
        ],
      ),
    );
  }
}