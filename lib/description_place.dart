import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323, right: 3),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final description = Container(
      margin: EdgeInsets.all(20),
      child: Text(
        descriptionPlace,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320, left: 20, right: 20),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border,
          ],
        )
      ],
    );

    return Column(
      children: <Widget>[title_stars, description],
    );
  }
}
