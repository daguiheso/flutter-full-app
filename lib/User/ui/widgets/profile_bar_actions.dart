import 'package:flutter/material.dart';

class ProfileBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonBar(
        mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.bookmark_border),
            mini: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurpleAccent,
            onPressed: null,
          ),
          FloatingActionButton(
            child: Icon(Icons.assignment),
            mini: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurpleAccent,
            onPressed: null,
          ),
          FloatingActionButton(
            child: Icon(Icons.add, size: 40,),
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurpleAccent,
            onPressed: null,
          ),
          FloatingActionButton(
            child: Icon(Icons.mail_outline),
            mini: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurpleAccent,
            onPressed: null,
          ),
          FloatingActionButton(
            child: Icon(Icons.person),
            mini: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurpleAccent,
            onPressed: null,
          ),
        ],
      ),
    );
  }

}