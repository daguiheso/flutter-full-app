import 'package:button_animate/widgets/button_purple.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  const DescriptionPlace({
    Key? key,
    required this.namePlace,
    required this.descriptionPlace,
    required this.stars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final starHalf = Container(
    //   margin: const EdgeInsets.only(top: 323.0, right: 3.0),
    //   child: const Icon(
    //     Icons.star_half,
    //     color: Color(0xFFf2C611),
    //   ),
    // );

    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF56575a))),
      ),
    );

    final tileStarts = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: GoogleFonts.lato(
              textStyle:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, starBorder],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tileStarts,
        description,
        const ButtonPurple(buttonText: 'Navigate'),
      ],
    );
  }
}
