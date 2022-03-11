import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class DsButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final VoidCallback onPressed;

  const DsButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DsButton();
  }
}

class _DsButton extends State<DsButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            gradient: const LinearGradient(
                colors: [Color(0xFFa7ff84), Color(0xFF1cbb78)],
                begin: FractionalOffset(0.2, 0.0),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
            child: Text(
          widget.text,
          style: GoogleFonts.lato(
              textStyle: const TextStyle(fontSize: 18.0, color: Colors.white)),
        )),
      ),
    );
  }
}
