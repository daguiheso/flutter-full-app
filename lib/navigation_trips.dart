import 'package:flutter/material.dart';

class NavigationTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationTrips();
  }
}

class _NavigationTrips extends State<NavigationTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
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
      )
    );
  }

}