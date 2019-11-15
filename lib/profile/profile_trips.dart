import 'package:flutter/material.dart';
import 'package:hello_world_flutter/profile/header_profile.dart';
import 'package:hello_world_flutter/profile/profile_bar_actions.dart';
import 'package:hello_world_flutter/shared/gradient_back.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack('Profile', 400, -0.9, -0.72),
        Container(
          margin: EdgeInsets.only(left: 20, top: 100, right: 20),
          child: Column(
            children: <Widget>[
              HeaderProfile(),
              ProfileBarActions(),
            ],
          ),
        )
      ],
    );
  }
}
