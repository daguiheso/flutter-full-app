import 'package:flutter/material.dart';
import 'package:hello_world_flutter/shared/gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack('Popular', 250, -0.9, -0.6),
        CardImageList()
      ],
    );
  }

}