import 'package:flutter/material.dart';
import 'package:featherwebs_assignment/model/data.dart';

class HorizontalListView extends StatelessWidget {
  final int index;
  HorizontalListView(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      width: 140,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(courses[index].backgroundImage),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10.0)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  courses[index].courseTitle,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  courses[index].startTime +
                      "-" +
                      courses[index].endTime +
                      " min",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
      ),
    );
  }
}
