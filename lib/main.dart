import 'package:flutter/material.dart';
import 'package:hello_world_flutter/navigation_trips_cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: NavigationTripsCupertino()
    );
  }
}
