part of '../../home.dart';

// ignore: unused_element
class _MainArea extends StatelessWidget {
  const _MainArea();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('가장 인기있는', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network('https://picsum.photos/200/300',fit: BoxFit.fitWidth,
            width: double.infinity,),
          ),
        ],
      ),
    );
  }
}
