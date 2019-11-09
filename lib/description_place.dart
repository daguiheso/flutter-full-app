import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final description = Container(
      margin: EdgeInsets.all(20),
      child: Text('''Lorem ipsum dolor sit amet consectetur adipisicing elit. In consequuntur repellat aperiam nemo optio cum qui sapiente fuga doloremque. Dicta excepturi vero numquam, illum magni labore recusandae. Optio, dolor quo.

Dicta excepturi vero numquam, illum magni labore recusandae. Optio, dolor quo.''',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320, left: 20, right: 20),
          child: Text(
            'Duwili Ella',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        )
      ],
    );

    return Column(
      children: <Widget>[
        title_stars,
        description
      ],
    );

  }
}
