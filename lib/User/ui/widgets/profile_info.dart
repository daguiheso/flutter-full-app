import 'package:button_animate/User/model/user.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final User user;

  const ProfileInfo({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final perfilPhoto = Container(
      margin: const EdgeInsets.only(right: 20),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(user.photo))),
    );

    final perfilDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          user.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
        Text(
          user.email,
          style: const TextStyle(
              color: Colors.white30, fontSize: 15, fontFamily: 'Lato'),
        )
      ],
    );

    return Row(
      children: <Widget>[perfilPhoto, perfilDescription],
    );
  }
}
