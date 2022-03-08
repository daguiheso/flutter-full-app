import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String details;
  final String comment;

  const Review(
      {Key? key,
      required this.pathImage,
      required this.name,
      required this.details,
      required this.comment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
            textStyle: const TextStyle(
          fontSize: 17.0,
        )),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
            textStyle:
                const TextStyle(fontSize: 13.0, color: Color(0xFFa3a4a7))),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
            textStyle:
                const TextStyle(fontSize: 13.0, fontWeight: FontWeight.w900)),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
