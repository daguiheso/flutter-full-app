import 'package:flutter/material.dart';
import 'package:hello_world_flutter/User/ui/widgets/circle_button.dart';

class ProfileBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 10.0
      ),
      child: Row(
        children: <Widget>[
          CircleButton(true, Icons.bookmark_border, 20.0, Color.fromRGBO(255, 255, 255, 1)),
          CircleButton(true, Icons.assignment, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
          CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1)),
          CircleButton(true, Icons.mail_outline, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
          CircleButton(true, Icons.person, 20.0, Color.fromRGBO(255, 255, 255, 0.6))
        ],
      ),
    );
  }

}