import 'package:flutter/material.dart';
import 'package:hello_world_flutter/User/ui/screens/profile_header.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_background.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_places_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(children: <Widget>[
          ProfileHeader(),
          ProfilePlacesList()
        ]),
      ],
    );
  }
}
