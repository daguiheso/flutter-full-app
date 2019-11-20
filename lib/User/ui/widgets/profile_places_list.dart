import 'package:flutter/material.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_place.dart';

class ProfilePlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/img/slider1.jpg', 'Islas Indonesia', 'Islas encantadoras para disfrutar junto a tu familia una vacaciones inolvodables.', 'Space 1200'),
          ProfilePlace('assets/img/slider1.jpg', 'Islas Margarita', 'Vacaciones inolvodables.', '2100'),
          ProfilePlace('assets/img/slider1.jpg', 'Punta Cana', 'Disfrutar junto a tu familia una vacaciones.', '1000'),
          ProfilePlace('assets/img/slider1.jpg', 'Islas Caiman', 'Tu familia una vacaciones inolvodables.', 'Space 3200'),
        ],
      )
    );
  }

}