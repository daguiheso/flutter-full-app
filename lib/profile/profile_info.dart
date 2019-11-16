import 'package:flutter/material.dart';
import 'package:hello_world_flutter/profile/header_profile.dart';
import 'package:hello_world_flutter/profile/profile_bar_actions.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final perfilPhoto = Container(
      margin: EdgeInsets.only(right: 20),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img/profile.jpeg'),
        )
      ),
    );

    final perfilDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Pathum Tzoo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Lato',
          ),
        ),
        Text(
          'daguiheso@gmail.com',
          style: TextStyle(color: Colors.white54, fontFamily: 'Lato'),
        )
      ],
    );

    return Row(
      children: <Widget>[perfilPhoto, perfilDescription],
    );
  }
}