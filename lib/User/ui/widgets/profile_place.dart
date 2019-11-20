import 'package:flutter/material.dart';
import 'package:hello_world_flutter/User/ui/widgets/profile_place_info.dart';

class ProfilePlace extends StatelessWidget {

  String image;
  String name;
  String where;
  String type;

  ProfilePlace(this.image, this.name, this.where, this.type);

  @override
  Widget build(BuildContext context) {
    final photoCard = Container(
      height: 220,
      margin: EdgeInsets.only(
        top: 10.0,
        bottom: 70.0
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black38, blurRadius: 10, offset: Offset(0, 5))
        ],
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );

    return Stack(
      alignment: Alignment(0, 0.8),
      children: <Widget>[
        photoCard,
        ProfilePlaceInfo(name, where, type)
      ]
    );
  }
}
