import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String text = 'Navigate';

  ButtonPurple(this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
            begin: FractionalOffset(0.2, 0),
            end: FractionalOffset(1, 0.6),
            stops: [0, 0.6],
            tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Lato',
            ),
            textAlign: TextAlign.center,
          ),
        )
      ),
    );
  }
}
