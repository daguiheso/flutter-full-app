import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavButton();
  }
}

class _FavButton extends State<FavButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final icon = isFavorite ? Icons.favorite : Icons.favorite_border;

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon(icon, color: Colors.white)
    );
  }

  void onPressedFav() {
    setState(() {
      isFavorite = !isFavorite;
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text(
          isFavorite ? 'Añadido a tus favoritos' : 'Removido de tus favoritos'
        )
      ));
    });
  }
}
