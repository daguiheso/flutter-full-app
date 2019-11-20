import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {

  String imgProfile;
  String name;
  String email;

  ProfileInfo(this.imgProfile, this.name, this.email);

  @override
  Widget build(BuildContext context) {
    final perfilPhoto = Container(
      margin: EdgeInsets.only(right: 20),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imgProfile),
        )
      ),
    );

    final perfilDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
        Text(
          email,
          style: TextStyle(
            color: Colors.white30,
            fontSize: 15,
            fontFamily: 'Lato'
          ),
        )
      ],
    );

    return Row(
      children: <Widget>[perfilPhoto, perfilDescription],
    );
  }
}