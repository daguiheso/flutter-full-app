import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17, fontFamily: 'Lato'),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userComment = Container(
      width: MediaQuery.of(context).size.width*0.65,
      margin: EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}
