part of '../../movie_detail_page.dart';

class _MovieGenres extends StatelessWidget {
  const _MovieGenres(this.genres, {super.key});
  final List<Genre> genres;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          decoration: BoxDecoration(
            border: Border.fromBorderSide(BorderSide(
              color: Colors.white,
            )),
            borderRadius: BorderRadius.circular(30)
          ),
          
          child: Align(
            alignment: Alignment.center,
            child: Text(genres[index].name, style: TextStyle(
              color: Colors.blue
            )),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 7);
      },
      itemCount: genres.length,
    );
  }
}
