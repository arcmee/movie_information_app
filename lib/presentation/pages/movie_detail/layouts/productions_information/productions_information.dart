part of '../../movie_detail_page.dart';

class _ProductionsInformation extends StatelessWidget {
  const _ProductionsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 70),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              child: Image.network(width: 150, 'https://picsum.photos/200/300', fit: BoxFit.fill,),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 10);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}