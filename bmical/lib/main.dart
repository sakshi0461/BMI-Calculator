import 'package:flutter/material.dart';
import 'calculator.dart';

void main() => runApp(Bmi());

class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color(0xFF090C22),
        appBar: AppBar(
          title:Center(child: Text('BMI CALCULATOR')),
          backgroundColor:Color(0xFF090C22),
        ),
        body:Calculator(),
      ),
    );
  }
}

