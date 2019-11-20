import 'package:flutter/material.dart';

class ProfilePlaceInfo extends StatelessWidget {
  String name;
  String where;
  String type;

  ProfilePlaceInfo(this.name, this.where, this.type);

  @override
  Widget build(BuildContext context) {

    final cardTitle = Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, fontFamily: 'Lato'),
      )
    );

    final cardDescription= Container(
      margin: EdgeInsets.only(bottom: 6),
      child: Text(
        where,
        style: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'Lato'),
      )
    );

    final cardValue = Container(
      child: Text(
        type,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.orange, fontFamily: 'Lato'),
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
