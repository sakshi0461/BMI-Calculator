import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'Resultpage.dart';
import 'buttombutton.dart';
import 'brain.dart';

const double heightofbottom=80.0;
const Color colorofcard=Color(0xFF101427);
const Color pinki=Color(0xFFEB1555);
const Color inactivecolor=Color(0xFF111328);

enum Gender{
  male,
  female,
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Color malecardcolor=inactivecolor;
  Color femalecardcolor=inactivecolor;
int height=180;
int weight=60;
int age=20;
  void update(Gender gender){
    
    if(gender==Gender.male){
      if(malecardcolor==inactivecolor){
         malecardcolor=colorofcard;
         femalecardcolor=inactivecolor;
      }
      else{
        malecardcolor=inactivecolor;
      }
    }
    else{
      if(femalecardcolor==inactivecolor){
        femalecardcolor=colorofcard;
        malecardcolor=inactivecolor;
      }
      else{
         femalecardcolor=inactivecolor;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         Expanded(
              child:Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            update(Gender.male);
                          });
                        },
                        child: Reusable(
                          colour:colorofcard,
                          cardname: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Icon(
                                     FontAwesomeIcons.mars,
                                     size:80.0,
                                     color: Colors.white,
                                   ),
                                   SizedBox(
                                     height:5.0,
                                   ),
                                   Text(
                                     'Male',
                                     style: TextStyle(
                                      fontSize: 18.0,
                                      color: Color(0xFF8D8E98),
                                     ),
                                   ),
                                 ],
                              ),
                          ),
                      ),
                      ),
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState(() {
                            update(Gender.female);
                          });
                        },
                        child: Reusable(
                          colour:colorofcard,
                          cardname:  Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   Icon(
                                     FontAwesomeIcons.venus,
                                     size:80.0,
                                     color: Colors.white,
                                   ),
                                   SizedBox(
                                     height:5.0,
                                   ),
                                   Text(
                                     'Female',
                                     style: TextStyle(
                                      fontSize: 18.0,
                                      color: Color(0xFF8D8E98),
                                     ),
                                   ),
                                 ],
                              ),
                          ),
                      ),
                     ),
                  ],
              ),
            ),
         Expanded(
           child:Reusable(
             colour:colorofcard,
             cardname: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                      style: TextStyle(
                        fontSize: 90.0,
                        color: Colors.white,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.white,
                                     ),
                      ),
                    ],
                  ),
                 SliderTheme (
                   data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor:Colors.white,
                    thumbColor:Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape :
                     RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: 
                     RoundSliderOverlayShape(overlayRadius: 30.0),
                   ),
                 child: Slider(
                      value: height.toDouble(),
                      min:120.0,
                      max:220.0,
                      onChanged: (double newvalue){
                         setState(() {
                           height=newvalue.round();
                         });
                       },
                      ), 
                  ),
                ],
             ),
             ),
           ),
         Expanded(
             child:Row(
                  children: <Widget>[
                    Expanded(
                      child: Reusable(
                        colour: colorofcard,
                        cardname: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Weight',
                              style: TextStyle(
                                 fontSize: 18.0,
                                 color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              weight.toString(),
                               style: TextStyle(
                               fontSize: 90.0,
                               color: Colors.white,
                              ),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Roundbutton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width:10.0,
                              ),
                              Roundbutton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                          ],
                         ),
                        ),
                      ),
                    Expanded(
                      child: Reusable(
                        colour: colorofcard,
                        cardname: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Age',
                              style: TextStyle(
                                 fontSize: 18.0,
                                 color: Color(0xFF8D8E98),
                              ),
                            ),
                            Text(
                              age.toString(),
                               style: TextStyle(
                               fontSize: 90.0,
                               color: Colors.white,
                              ),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Roundbutton(
                                icon: FontAwesomeIcons.minus,
                                onpressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width:10.0,
                              ),
                              Roundbutton(
                                icon: FontAwesomeIcons.plus,
                                onpressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                          ],
                         ),
                        ),
                     ),
                  ],
              ),
            ),
            BottomButton(
              ontap: (){
                Calculating calcs=Calculating(height:height,weight:weight);
                  
                    Navigator.push(
                      context,
              MaterialPageRoute(builder: (context)=>ResultPage(interpretation: calcs.getinter(),bmiresults: calcs.getres(),resulttext: calcs.bmic())));
              },
              buttontitle: 'Calculator')
       ],
    );
  }
}


class Roundbutton extends StatelessWidget {
  Roundbutton({@required this.icon, this.onpressed});
  
  final IconData icon;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width:56,
        height:56,
      ),
      shape:CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}



