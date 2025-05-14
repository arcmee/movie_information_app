part of 'horizontal_list.dart';

class _HorizontalListElement extends StatelessWidget {
  
  const _HorizontalListElement();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 500),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network('https://picsum.photos/200/300',fit: BoxFit.fitHeight,)),
    );
  }
}