import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isFav = false;

  void onPressedFav() {
    setState(() {
      _isFav = !_isFav;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(_isFav ? 'Add favorite' : 'Remove favorite')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      child: _isFav
          ? const Icon(Icons.favorite, color: Colors.white)
          : const Icon(Icons.favorite_border_outlined),
      onPressed: onPressedFav,
    );
  }
}
