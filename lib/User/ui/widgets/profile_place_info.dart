import 'package:flutter/material.dart';
import 'package:hello_world_flutter/Place/model/place.dart';

class ProfilePlaceInfo extends StatelessWidget {
  Place place;

  ProfilePlaceInfo(this.place);

  @override
  Widget build(BuildContext context) {
    final cardTitle = Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Text(
        this.place.name,
        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, fontFamily: 'Lato'),
      )
    );

    final cardDescription = Container(
      margin: EdgeInsets.only(bottom: 6),
      child: Text(
        this.place.where,
        style: TextStyle(
          fontSize: 12,
          color: Color.fromRGBO(0, 0, 0, 0.4),
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold
        ),
      )
    );

    final cardValue = Container(
      child: Text(
        this.place.type,
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.4),
          fontFamily: 'Lato',
          fontSize: 12.0,
          fontWeight: FontWeight.bold
        ),
      )
    );

    return Container(
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
          children: <Widget>[cardTitle, cardDescription, cardValue],
        ),
      ));
  }
}
