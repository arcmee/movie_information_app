part of '../../home.dart';


class _MainArea extends StatelessWidget {
  const _MainArea(this.imageUrl);
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('가장 인기있는', style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 5),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network('https://image.tmdb.org/t/p/original${imageUrl}',fit: BoxFit.fitWidth,
          width: double.infinity,),
        ),
      ],
    );
  }
}
