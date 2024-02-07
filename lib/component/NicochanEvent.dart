import 'package:flutter/material.dart';
import 'dart:math';

class StateNicochanEvent extends StatefulWidget{

  @override
  State<StateNicochanEvent> createState() {
    return NicochanEvent();
  }
}

class NicochanEvent extends State<StateNicochanEvent> {
  double x = (Random().nextInt (16).toDouble()-8)/10;
  double y = (Random().nextInt (16).toDouble()-8)/10;
  double rotate = Random().nextInt (4).toDouble()-2;

  @override
  Widget build(BuildContext context) {
    return Center(
        child:GestureDetector(
        onTap: (){
          debugPrint(x.toString() + ',' + y.toString());
          showDialog(
              barrierColor:Colors.transparent,
              context: context,
              builder: (_){
                return StateNicochanEvent();
              }
          );
        },
         child: Container(
            alignment:  Alignment(x,y),
            child: Transform.rotate(
              angle: rotate,
              child: const Image(
                image: AssetImage('images/nicochan.png',),
                width: 100,
                height: 100,
              )
            ),
         ),
        ),
    );
  }
}


