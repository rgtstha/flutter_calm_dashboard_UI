import 'package:featherwebs_assignment/model/data.dart';
import 'package:featherwebs_assignment/widgets/horizontal_list.dart';
import 'package:featherwebs_assignment/widgets/vertical_list.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              decoration: kHeaderStyle,
              padding: EdgeInsets.only(left: 20.0),
              height: 200,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 50.0,
                    bottom: 0.0,
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFCD75), shape: BoxShape.circle),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Welcome Nitima", style: kHeaderTextStyle),
                      Text(
                        "22 March, 2020",
                        style: kInnerTextStyle,
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Your Stats', style: kBodyTextStyle),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      StatCard(
                        headingText: 'Average Duration',
                        countText: '16',
                        unitText: 'min',
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      StatCard(
                        headingText: 'Total Sessions',
                        countText: "5",
                      ),
                      SizedBox(width: 10.0),
                      StatCard(
                        headingText: "Event Attended",
                        countText: "2",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Continue the session', style: kBodyTextStyle),
                  SizedBox(
                    height: 20.0,
                  ),
                  GetCard(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Popular Courses', style: kBodyTextStyle),

                  SizedBox(
                    height: 20.0,
                  ),

                  //Horizontal ListView
                  Container(
                    height: 180.0,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: courses.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            HorizontalListView(index)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Recommended',
                    style: kBodyTextStyle,
                  ),

                  Container(
                    height: 400,
                    //padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (ctx, i) => VerticalListView(i),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.77,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/3.jpg'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10.0)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Morning Class",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "10 minutes",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  LinearPercentIndicator(
                    lineHeight: 4,
                    percent: 0.8,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.white,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String headingText;
  final String countText;
  final String unitText;

  StatCard(
      {@required this.headingText, @required this.countText, this.unitText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                headingText,
                style: kInnerTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    countText,
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  if (unitText != null)
                    Text(
                      'min',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                    )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFFFBE4D),
          ),
        ),
      ),
    );
  }
}
