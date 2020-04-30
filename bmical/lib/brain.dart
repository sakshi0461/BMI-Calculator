import 'dart:math';

class Calculating{
   Calculating({this.height,this.weight});

  final int height;
   final int weight;
  double bmi;
  String bmic(){
    double bmi=weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }

  String getres(){
    if(bmi>=25)
     return 'overweight';
    else if(bmi>18.5)
     return 'Normal';
    else
     return 'Underweight';
  }

  String getinter(){
    if(bmi>=25)
     return 'you have a heigher weight than normal';
    else if(bmi>18.5)
     return 'your weight is normal';
    else
     return 'you are under weight sorry';
  }


}