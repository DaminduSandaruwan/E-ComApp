import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Icon(Icons.help),
          Icon(Icons.help),
          Icon(Icons.help),
          Icon(Icons.help),
          Icon(Icons.help),
          Icon(Icons.help),
        ],
      ),
    );
  }
}