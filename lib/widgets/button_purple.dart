import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  final String buttonText;

  const ButtonPurple({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Navigating')));
          },
          child: Container(
            height: 50.0,
            width: 180.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: const LinearGradient(
                    colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                    begin: FractionalOffset(0.2, 0.0),
                    stops: [0.0, 0.6],
                    tileMode: TileMode.clamp)),
            child: Center(
                child: Text(
              buttonText,
              style: GoogleFonts.lato(
                  textStyle:
                      const TextStyle(fontSize: 18.0, color: Colors.white)),
            )),
          ),
        ));
  }
}
