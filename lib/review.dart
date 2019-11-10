import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = 'assets/img/akita.jpg';

  Review(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration:
        BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
          )
        ),
    );

    return Row(
      children: <Widget>[],
    );
  }
}
