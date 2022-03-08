import 'package:button_animate/widgets/floating_action_button_green.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String pathImage;

  const CardImage({Key? key, required this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ],
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [card, const FloatingActionButtonGreen()],
    );
  }
}
