import 'package:flutter/material.dart';
import 'package:button_animate/User/ui/screens/profile_header.dart';
import 'package:button_animate/User/ui/widgets/profile_background.dart';
import 'package:button_animate/User/ui/widgets/profile_places_list.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const ProfileBackground(),
        ListView(
            children: <Widget>[const ProfileHeader(), ProfilePlacesList()]),
      ],
    );
  }
}
