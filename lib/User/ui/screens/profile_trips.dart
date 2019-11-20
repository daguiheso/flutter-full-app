import 'package:flutter/material.dart';
import 'package:hello_world_flutter/User/ui/screens/header_profile.dart';
import 'package:hello_world_flutter/User/ui/widgets/card_info_list.dart';
import 'package:hello_world_flutter/widgets/gradient_back.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack('', 400, -0.9, -0.72),
        Stack(
          children: <Widget>[
            ListView(children: <Widget>[CardInfoList()]),
            HeaderProfile()
          ],
        )
      ],
    );
  }
}
