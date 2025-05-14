part of '../../home.dart';

class _UpcomingArea extends StatelessWidget {
  
  const _UpcomingArea();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints( maxHeight: 200, maxWidth: double.infinity),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('개봉예정', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          Expanded(child: HorizontalList()),
        ],
      ),
    );
  }
}