part of '../../movie_detail_page.dart';

class _PopularInformationSquares extends StatelessWidget {
  const _PopularInformationSquares(this.movieDetail, {super.key});
  final MovieDetail movieDetail;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          PopularSquare(lable: '평점', amount: movieDetail.voteAverage.toString(),),
          PopularSquare(lable: '평점 투표수', amount: movieDetail.voteCount.toString(),),
          PopularSquare(lable: '인기점수', amount: movieDetail.popularity.toString(),),
          PopularSquare(lable: '예산', amount: movieDetail.budget.toString(),),
          PopularSquare(lable: '수익', amount: movieDetail.revenue.toString(),),
        ],
      ),
    );
  }
}

class PopularSquare extends StatelessWidget {
  const PopularSquare({required this.lable, required this.amount, super.key});
  final String lable;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: Colors.white)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(amount), Text(lable)],
      ),
    );
  }
}
