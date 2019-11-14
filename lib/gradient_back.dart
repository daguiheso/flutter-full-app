import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;
  double height;
  double alignX;
  double alignY;

  GradientBack(this.title, this.height, this.alignX, this.alignY);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
          begin: FractionalOffset(0.2, 0),
          end: FractionalOffset(1, 0.6),
          stops: [0, 0.6],
          tileMode: TileMode.clamp)
        ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontFamily: 'Lato'
        ),
      ),
      alignment: Alignment(alignX, alignY),
    );
  }
}
