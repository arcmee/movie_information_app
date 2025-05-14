part of '../../movie_detail_page.dart';

class _PopularInformationSquares extends StatelessWidget {
  const _PopularInformationSquares({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(
              color: Colors.white,
            )),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('5.949'),
              Text('평점'),
            ]
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 5);
      },
      itemCount: 4,
    );
  }
}