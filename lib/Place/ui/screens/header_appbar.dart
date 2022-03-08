import 'package:button_animate/Place/ui/widgets/card_image_list.dart';
import 'package:button_animate/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack(title: 'Welcome'),
        CardImageList(),
      ],
    );
  }
}
