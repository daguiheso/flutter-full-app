import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Review(
          'assets/img/akita.jpg',
          'Daniel Hernandez',
          '1 review 5 photos',
          'Una buena opción para cualquier tipo de interes'
        ),
        Review(
          'assets/img/pazdera.png',
          'Oscar Mejia',
          '3 review 1 photos',
          'Es agradable hacer lo que nos apasiona.'
        ),
        Review(
          'assets/img/ana.jpg',
          'Ana Maria ',
          '1 review 4 photos',
          'Que bueno encontrar un equipo agradable y hacer que las cosas pasen, genial!!!!'
        ),
        Review(
          'assets/img/akita.jpg',
          'Daniel Hernandez',
          '1 review 5 photos',
          'Una buena opción para cualquier tipo de interes'
        ),
      ],
    );
  }

}