import 'package:flutter/material.dart';
import 'package:hello_world_flutter/Place/ui/widgets/card_image_list.dart';
import 'package:hello_world_flutter/widgets/gradient_back.dart';

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