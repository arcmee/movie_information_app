
import 'package:flutter/material.dart';
part 'horizontal_list_element.dart';


class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated
    (
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return _HorizontalListElement();
      },
      scrollDirection: Axis.horizontal, 
      separatorBuilder: (BuildContext context, int index) { 
        return SizedBox(width: 20,);
      },
    );
  }
}
