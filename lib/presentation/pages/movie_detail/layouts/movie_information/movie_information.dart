part of '../../movie_detail_page.dart';

class _MovieInformation extends StatelessWidget {
  const _MovieInformation({super.key});

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
              Text('제목', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              Text('2024-11-27'),
            ],
          ),
          Text('movie explane'),
          Divider(),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: double.infinity, maxHeight: 30),
            child: _MovieGenres()
          ),
          Divider(),
          Text('cwnfaiouwcfahwiucfahnsiucfnoaiushcfniausfhciaushcfi afiucn ahweoiufnchaoiwufn')
        ],
      ),
    );
  }
}