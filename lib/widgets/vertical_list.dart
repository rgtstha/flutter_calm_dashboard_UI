import 'package:flutter/material.dart';
import '../model/data.dart';

class VerticalListView extends StatelessWidget {
  final int count;

  VerticalListView(this.count);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(courses[count].backgroundImage),
                  fit: BoxFit.cover)),
        ),
        title: Text(courses[count].courseTitle),
        subtitle: Text(
          courses[count].startTime + "-" + courses[count].endTime + " min",
        ),
        trailing: Icon(
          Icons.play_circle_filled,
          color: Color(0xFFFFBE4D),
        ),
      ),
    );
  }
}
