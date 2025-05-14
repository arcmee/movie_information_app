part of 'popular_list.dart';

class _PopularListElement extends StatelessWidget {
  _PopularListElement({required this.index, super.key});
  int index;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 500,),
      child: Container(
        padding: EdgeInsets.fromLTRB(25,0,0,0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://picsum.photos/200/300',
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              left: -30,
              bottom: -30,
              child: Text(index.toString(), style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
