import 'package:button_animate/User/ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class ProfileBarActions extends StatelessWidget {
  const ProfileBarActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
      child: Row(
        children: <Widget>[
          CircleButton(
              mini: true,
              icon: Icons.bookmark_border,
              iconSize: 20.0,
              color: const Color.fromRGBO(255, 255, 255, 1)),
          CircleButton(
              mini: true,
              icon: Icons.assignment,
              iconSize: 20.0,
              color: const Color.fromRGBO(255, 255, 255, 0.6)),
          CircleButton(
              mini: false,
              icon: Icons.add,
              iconSize: 40.0,
              color: const Color.fromRGBO(255, 255, 255, 1)),
          CircleButton(
              mini: true,
              icon: Icons.mail_outline,
              iconSize: 20.0,
              color: const Color.fromRGBO(255, 255, 255, 0.6)),
          CircleButton(
              mini: true,
              icon: Icons.person,
              iconSize: 20.0,
              color: const Color.fromRGBO(255, 255, 255, 0.6)),
        ],
      ),
    );
  }
}
