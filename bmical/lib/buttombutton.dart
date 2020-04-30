import 'package:flutter/material.dart';
import 'calculator.dart';

class BottomButton extends StatelessWidget {
  
  BottomButton({@required this.ontap , @required this.buttontitle});

  final Function ontap;
  final String buttontitle;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector (
          onTap: ontap, 
          child: Container(
            child:Center(
              child: Text('Calculate',
                style:TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                ),
               ),
            ),
             padding:EdgeInsets.only(bottom :20.0),
              margin: EdgeInsets.only(top: 10.03),
              width: double.infinity,
              color: pinki,
              height: heightofbottom,
            ),
        );
  }
}
