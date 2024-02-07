import 'package:flutter/material.dart';
import 'dart:math';

class StateNicochanEvent extends StatefulWidget{

  @override
  State<StateNicochanEvent> createState() {
    return NicochanEvent();
  }
}

class NicochanEvent extends State<StateNicochanEvent> {
  double x = Random().nextInt (100).toDouble()-50;
  double y = Random().nextInt (150).toDouble()-70;

  @override
  Widget build(BuildContext context) {
    return Center(
       child: Container(
           alignment:  Alignment(x,y),
           height: 100,
           width: 100,
           decoration: ShapeDecoration(
               color: Colors.transparent,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15.0))),
           child: Image.asset('images/nicochan.png')
       ),
    );
  }
}


