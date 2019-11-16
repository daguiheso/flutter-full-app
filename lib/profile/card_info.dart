import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  String title;
  String description;
  String value;

  CardInfo(this.title, this.description, this.value);

  @override
  Widget build(BuildContext context) {
    final image = Container(
      height: 230,
      width: 400,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
        ],
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('assets/img/slider1.jpg')),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
    );

    final cardTitle = Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, fontFamily: 'Lato'),
      )
    );

    final cardDescription= Container(
      margin: EdgeInsets.only(bottom: 6),
      child: Text(
        description,
        style: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'Lato'),
      )
    );

    final cardValue = Container(
      child: Text(
        value,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.orange, fontFamily: 'Lato'),
      )
    );

    final cardInfo = Container(
      width: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            cardTitle,
            cardDescription,
            cardValue
          ],
        ),
      )
    );

    return Container(
      margin: EdgeInsets.only(bottom: 80),
      child: Stack(
        alignment: Alignment(0, 1.8),
        children: <Widget>[
          image,
          cardInfo
        ],
      ),
    );

  }
}
