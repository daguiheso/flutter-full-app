import 'package:flutter/material.dart';
import 'package:button_animate/User/ui/screens/profile_trips.dart';
import 'package:button_animate/Place/ui/screens/home_trips.dart';
import 'package:button_animate/Place/ui/screens/search_trips.dart';

class NavigationTrips extends StatefulWidget {
  const NavigationTrips({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NavigationTrips();
  }
}

class _NavigationTrips extends State<NavigationTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    const HomeTrips(),
    const SearchTrips(),
    const ProfileTrips(),
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
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          )),
    );
  }
}
