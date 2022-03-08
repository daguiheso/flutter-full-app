import 'package:flutter/material.dart';
import 'package:button_animate/Place/model/place.dart';
import 'package:button_animate/User/ui/widgets/profile_place.dart';

class ProfilePlacesList extends StatelessWidget {
  final Place place = Place(
      'Knuckles Mountains Range',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '123,123,123');
  final Place place2 = Place(
      'Mountains',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');
  final Place place3 = Place(
      'Punta Cana',
      'Disfrutar junto a tu familia una vacaciones.',
      'Scenery & Photography',
      '1,321,321');

  ProfilePlacesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
            top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
        child: Column(
          children: <Widget>[
            ProfilePlace(image: 'assets/img/slider1.jpg', place: place),
            ProfilePlace(image: 'assets/img/slider2.jpg', place: place2),
            ProfilePlace(image: 'assets/img/slider3.jpg', place: place3)
          ],
        ));
  }
}
