import 'package:flutter/material.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_bar_actions.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_info.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Text(
        'Profile',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: 'Lato'
        ),
      )
    );

    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[title],
          ),
          ProfileInfo(
              'assets/img/profile.jpeg', 'Pathum Tzoo', 'daguiheso@gmail.com'),
          ProfileBarActions(),
        ],
      ),
    );
  }
}
