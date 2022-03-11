import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  final bool mini;
  var icon = Icons.not_accessible;
  final double iconSize;
  var color = const Color.fromRGBO(255, 255, 255, 1);
  final VoidCallback onPressed;

  CircleButton(
      {Key? key,
      required this.mini,
      required this.icon,
      required this.iconSize,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      backgroundColor: widget.color,
      mini: widget.mini,
      onPressed: widget.onPressed,
      child: Icon(
        widget.icon,
        size: widget.iconSize,
        color: const Color(0xFF4268D3),
      ),
    ));
  }
}
