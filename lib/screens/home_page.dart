import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:featherwebs_assignment/screens/home_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavyBar(
          // backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onItemSelected: (index) => changeIndex(index),
          items: [
            BottomNavyBarItem(
              activeColor: Color(0xFFFFBE4D),
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavyBarItem(
              activeColor: Color(0xFFFFBE4D),
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Colors.black,
              ),
              title: Text('Action'),
            ),
            BottomNavyBarItem(
              activeColor: Color(0xFFFFBE4D),
              icon: Icon(
                Icons.event_note,
                color: Colors.black,
              ),
              title: Text('Events'),
            ),
            BottomNavyBarItem(
              activeColor: Color(0xFFFFBE4D),
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              title: Text('Account'),
            ),
          ],
        ),
        body: (_currentIndex == 0)
            ? HomeTab()
            : (_currentIndex == 1)
                ? Center(child: Text('Action Page'))
                : (_currentIndex == 2)
                    ? Center(
                        child: Text('Event page'),
                      )
                    : Center(
                        child: Text('Account Page'),
                      ));
  }
}
