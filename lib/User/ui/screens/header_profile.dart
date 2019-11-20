import 'package:flutter/material.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_bar_actions.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_info.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      margin: EdgeInsets.only(bottom: 14),
      child: Text(
        'Profile',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: 'Lato'
        ),
      ),
    );

    return Container(
      height: 300,
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
          begin: FractionalOffset(0.2, 0),
          end: FractionalOffset(1, 0.6),
          stops: [0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title,
          ProfileInfo(),
          ProfileBarActions(),
        ],
      ),
    );
  }

}