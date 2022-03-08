import 'package:button_animate/Place/ui/widgets/card_image.dart';
import 'package:flutter/material.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(
            pathImage: 'assets/img/slider1.jpg',
          ),
          CardImage(
            pathImage: 'assets/img/slider2.jpg',
          ),
          CardImage(
            pathImage: 'assets/img/slider3.jpg',
          ),
          CardImage(
            pathImage: 'assets/img/slider4.jpg',
          ),
        ],
      ),
    );
  }
}
