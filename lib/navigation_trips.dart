import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class NavigationTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationTrips();
  }
}

class _NavigationTrips extends State<NavigationTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Container(height: 0)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Container(height: 0)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Container(height: 0)
            ),
          ],
        ),
      ));
  }
}
