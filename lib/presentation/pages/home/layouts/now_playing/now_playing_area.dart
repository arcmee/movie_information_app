part of '../../home.dart';
class _NowPlayingArea extends StatelessWidget {
  
  const _NowPlayingArea();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints( maxHeight: 200, maxWidth: double.infinity),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('현재 상영중', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          Expanded(child: HorizontalList()),
        ],
      ),
    );
  }
}