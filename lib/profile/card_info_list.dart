import 'package:flutter/material.dart';
import 'package:hello_world_flutter/profile/card_info.dart';

class CardInfoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 300),
      child: Column(
        children: <Widget>[
          CardInfo('Islas Indonesia', 'Islas encantadoras para disfrutar junto a tu familia una vacaciones inolvodables.', 'Space 1200'),
          CardInfo('Islas Margarita', 'Vacaciones inolvodables.', '2100'),
          CardInfo('Punta Cana', 'Disfrutar junto a tu familia una vacaciones.', '1000'),
          CardInfo('Islas Caiman', 'Tu familia una vacaciones inolvodables.', 'Space 3200'),
        ],
      )
    );
  }

}