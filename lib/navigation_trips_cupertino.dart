import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello_world_flutter/Place/ui/screens/home_trips.dart';
import 'package:hello_world_flutter/Place/ui/screens/search_trips.dart';
import 'package:hello_world_flutter/User/ui/screens/profile_trips.dart';

class NavigationTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Colors.indigo,
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
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }

        },
      )
    );
  }

}