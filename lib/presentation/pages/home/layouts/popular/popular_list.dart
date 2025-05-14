import 'package:flutter/material.dart';
part 'popular_list_element.dart';

class PopularList extends StatelessWidget {
  
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated
    (
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return _PopularListElement(index : index+1);
      },
      scrollDirection: Axis.horizontal, 
      separatorBuilder: (BuildContext context, int index) { 
        return SizedBox(width: 20,);
      },
    );
  }
}