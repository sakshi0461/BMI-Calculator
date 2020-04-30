import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({@required this.colour , this.cardname});

  final Color colour;
  final Widget cardname;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:cardname,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}