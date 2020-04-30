import 'package:bmical/reusablecard.dart';
import 'package:flutter/material.dart';
import 'calculator.dart';
import 'buttombutton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.interpretation ,@required this.bmiresults ,@required this.resulttext} );

  final String bmiresults;
  final String resulttext;
  final String interpretation;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI CALCULATOR'),
      ),
      body:Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
         Expanded(
           child:Container(
             alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(15),
             child: Text(
               'Your Results',
               style:TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
               ),
             ),
           ),
         ),
         Expanded(
           flex:5,
           child:Reusable(
             colour: colorofcard,
             cardname: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                 Text(resulttext.toUpperCase(),
                   style:TextStyle(
                    color:Color(0xFF24D876),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                   ),
                 ),
                 Text(
                   bmiresults,
                   style:TextStyle(
                     fontSize: 100,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 Text(
                   interpretation,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 22,
                   ),
                 ),
               ],
             ),
            ),
         ),
         BottomButton(
           ontap:(){
             Navigator.pop(context);
           } , 
           buttontitle: 'Re-Calculate',
           ),
       ],
      ),
    );
  }
}