part of '../../movie_detail_page.dart';

class _MainImage extends StatelessWidget {
  const _MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Image.network(
        'https://picsum.photos/200/300',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
