import 'package:flutter/material.dart';
import 'package:button_animate/User/ui/widgets/profile_bar_actions.dart';
import 'package:button_animate/User/ui/widgets/profile_info.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Lato'),
        ));

    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
      child: Column(
        children: <Widget>[
          Row(
            children: const <Widget>[title],
          ),
          const ProfileInfo(
              imgProfile: 'assets/img/profile.jpeg',
              name: 'Pathum Tzook',
              email: 'daguiheso@gmail.com'),
          const ProfileBarActions(),
        ],
      ),
    );
  }
}
