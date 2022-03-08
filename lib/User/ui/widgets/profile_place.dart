import 'package:flutter/material.dart';
import 'package:button_animate/Place/model/place.dart';
import 'package:button_animate/User/ui/widgets/profile_place_info.dart';

class ProfilePlace extends StatelessWidget {
  final String image;
  final Place place;

  const ProfilePlace({Key? key, required this.image, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoCard = Container(
      height: 220,
      margin: const EdgeInsets.only(top: 10.0, bottom: 70.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black38, blurRadius: 10, offset: Offset(0, 5))
        ],
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );

    return Stack(
        alignment: const Alignment(0, 0.8),
        children: <Widget>[photoCard, ProfilePlaceInfo(place: place)]);
  }
}
