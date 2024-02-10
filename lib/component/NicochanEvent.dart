import 'package:flutter/material.dart';
import 'dart:math';

class StateNicochanEvent extends StatefulWidget{
  final int nicounter;
  const StateNicochanEvent({super.key, required this.nicounter});



  @override
  State<StateNicochanEvent> createState() {
    return NicochanEvent();
  }
}

class NicochanEvent extends State<StateNicochanEvent> {
  double x = (Random().nextInt (16).toDouble()-8)/10;
  double y = (Random().nextInt (16).toDouble()-8)/10;
  double rotate = Random().nextInt (4).toDouble()-2;
  int nicounter = 0;
  var alignDefault = Alignment.center;
  var alinList = [Alignment.topCenter,Alignment.centerLeft,Alignment.bottomCenter,Alignment.bottomRight,
                  Alignment.topRight,Alignment.bottomLeft,Alignment.centerLeft,Alignment.centerRight];
  int  beforram = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Stack(
        children: [
          if(widget.nicounter == 0)...[
            AnimatedAlign(
              alignment: alignDefault,
              curve: Cubic(0, 5, 0, 0),
              duration: Duration(seconds: 1),
              child:Container(
                width: 180,
                height: 180,

                child:GestureDetector(
                  onTap: (){
                    setState(() {
                      int ram = Random().nextInt (8);
                      for(;beforram == ram; ){
                        ram = Random().nextInt (8);
                      }
                      beforram  = ram;
                      alignDefault = alinList[ram];
                    });
                  },
                  child: Image(
                    image: AssetImage('images/nicochan.png'),
                  ),
                ),
              ),
            ),
          ],


          if(widget.nicounter != 0)...[
            GestureDetector(
              onTap: (){
                if(widget.nicounter < 30){
                  setState(() {
                    nicounter = widget.nicounter + 1;
                  });
                  showDialog(
                      barrierColor:Colors.transparent,
                      context: context,
                      builder: (_){
                        return StateNicochanEvent(nicounter:nicounter);
                      }
                  );
                }
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
          ],
          Align(
            alignment: Alignment.topRight,
            child:Container(
              margin: const  EdgeInsets.fromLTRB(0, 10, 20, 0),
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Icon(
                  Icons.cancel_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            )
          ),
          if(widget.nicounter != 0)...[
            Align(
                alignment: Alignment.bottomLeft,
                child:Container(
                  margin: const  EdgeInsets.fromLTRB(20,0,0, 60),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width:3,color:Colors.blue.shade300)
                  ),
                  child:Center(
                    child: Text(widget.nicounter.toString(),style: TextStyle(fontSize: 25),textAlign:TextAlign.center,),
                  ),

                )
            ),
          ],

        ],
      )

    );
  }
}


