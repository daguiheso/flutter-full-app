import 'package:button_animate/Place/model/place.dart';
import 'package:flutter/material.dart';

class ProfilePlaceInfo extends StatelessWidget {
  final Place place;

  const ProfilePlaceInfo({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardTitle = Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Text(
          place.name,
          style: const TextStyle(
              fontWeight: FontWeight.w800, fontSize: 20, fontFamily: 'Lato'),
        ));

    final cardDescription = Container(
        margin: const EdgeInsets.only(bottom: 6),
        child: Text(
          place.where,
          style: const TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(0, 0, 0, 0.4),
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold),
        ));

    final cardValue = Text(
      place.type,
      style: const TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.4),
          fontFamily: 'Lato',
          fontSize: 12.0,
          fontWeight: FontWeight.bold),
    );

    return Container(
        width: 260,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38, blurRadius: 15, offset: Offset(0, 7))
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[cardTitle, cardDescription, cardValue],
          ),
        ));
  }
}
