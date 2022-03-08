import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  final bool mini;
  var icon = Icons.not_accessible;
  final double iconSize;
  var color = const Color.fromRGBO(255, 255, 255, 1);

  CircleButton(
      {Key? key,
      required this.mini,
      required this.icon,
      required this.iconSize,
      required this.color})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton> {
  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      backgroundColor: widget.color,
      mini: widget.mini,
      onPressed: onPressedButton,
      child: Icon(
        widget.icon,
        size: widget.iconSize,
        color: const Color(0xFF4268D3),
      ),
    ));
  }
}
