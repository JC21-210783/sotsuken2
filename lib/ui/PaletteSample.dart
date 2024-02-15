import 'package:flutter/material.dart';
import 'dart:math';

class StatePaletteSample extends StatefulWidget{
  const StatePaletteSample({super.key});

  @override
  State<StatePaletteSample> createState(){
    return PaletteSample();
  }
}

class PaletteSample extends State<StatePaletteSample> {
  MaterialColor myColor = Colors.grey;
  var myShape = 0.0;
  List<double> mySize = [100,100];
  Alignment myAlign = Alignment.center;
  List col = [Colors.red,Colors.blue,Colors.yellow,Colors.green,Colors.black,Colors.brown,Colors.deepPurple,
              Colors.lightBlue,Colors.lightGreen,Colors.pink,Colors.orange,Colors.indigo];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        toolbarHeight: 60,
        title: const Text('PaletteSample',style: TextStyle(fontSize: 23),),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
            )
        ),
      ),
      body: Center(
        child:SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    )
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      decoration: BoxDecoration(
                          color:Colors.white,
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 2,
                                spreadRadius: 2,
                                offset: Offset(4,4)
                            ),
                          ]
                      ),
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                            child:ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple[300],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                                onPressed: (){
                                  setState(() {mySize[0] = 170; mySize[1] = 90;});
                                },
                                child: Text('横長',style: TextStyle(fontSize: 20),)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child:ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple[300],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                                onPressed: (){
                                  setState(() {mySize[1] = 100; mySize[0] = 100;});
                                },
                                child: Text('正方',style: TextStyle(fontSize: 20),)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                            child:ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple[300],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                                onPressed: (){
                                  setState(() {mySize[1] = 150; mySize[0] = 90;});
                                },
                                child: Text('縦長',style: TextStyle(fontSize: 20),)
                            ),
                          ),
                        ],
                      ),
                    ),

                    //かわるやつ
                    AnimatedAlign(
                      alignment: myAlign,
                      curve: Curves.easeInOutSine,
                      duration: Duration(milliseconds: 700),
                      child: AnimatedContainer(
                        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        width: mySize[0],
                        height: mySize[1],
                        curve: Curves.easeInOutSine,
                        decoration: BoxDecoration(
                          color: myColor,
                          borderRadius: BorderRadius.circular(myShape),
                        ),
                        duration: Duration(milliseconds: 400),
                      ),
                    ),



                    Container(
                      width: 290,
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      decoration: BoxDecoration(
                        color:Colors.white,
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(4,4)
                          ),
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //色
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin:EdgeInsets.fromLTRB(10, 15, 5, 10),
                                child: ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)
                                      )
                                  ),
                                  onPressed: (){
                                    setState(() {myColor = Colors.red;});
                                  },
                                  child: null,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin:EdgeInsets.fromLTRB(5, 15, 5, 10),
                                child: ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)
                                      )
                                  ),
                                  onPressed: (){
                                    setState(() {myColor = Colors.orange;});
                                  },
                                  child: null,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin:EdgeInsets.fromLTRB(5, 15, 5, 10),
                                child: ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                      backgroundColor: Colors.yellow,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)
                                      )
                                  ),
                                  onPressed: (){
                                    setState(() {myColor = Colors.yellow;});
                                  },
                                  child: null,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin:EdgeInsets.fromLTRB(5, 15, 5, 10),
                                child: ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                      backgroundColor: Colors.lightGreen,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)
                                      )
                                  ),
                                  onPressed: (){
                                    setState(() {myColor = Colors.lightGreen;});
                                  },
                                  child: null,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin:EdgeInsets.fromLTRB(5, 15, 10, 10),
                                child: ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                      backgroundColor: Colors.lightBlue,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)
                                      )
                                  ),
                                  onPressed: (){
                                    setState(() {myColor = Colors.lightBlue;});
                                  },
                                  child: null,
                                ),
                              ),

                            ],
                          ),
                          //形
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                margin:EdgeInsets.fromLTRB(5, 10, 10, 15),
                                child:OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.grey ,width:3),
                                    backgroundColor: Colors.white54,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                    )
                                  ),
                                    onPressed: (){
                                      setState(() {myShape = 100.0;});
                                    },
                                    child: null,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                margin:EdgeInsets.fromLTRB(10, 10, 10, 15),
                                child:OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.grey ,width:3),
                                      backgroundColor: Colors.white54,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      )
                                  ),
                                  onPressed: (){
                                    setState(() {myShape = 30;});
                                  },
                                  child: null,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                margin:EdgeInsets.fromLTRB(10, 10, 5, 15),
                                child:OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.grey ,width:3),
                                      backgroundColor: Colors.white54,
                                  ),
                                  onPressed: (){
                                    setState(() {myShape = 5;});
                                  },
                                  child: null,
                                ),
                              ),
                            ]
                          ),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //△ボタンのムーブ
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle
                          ),
                          margin: EdgeInsets.fromLTRB(0, 15, 13, 15),
                          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: IconButton(
                            onPressed: () {
                              setState(() {myAlign = Alignment.centerLeft;});
                            },
                            icon: Icon(Icons.chevron_left,size: 35,),

                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle
                          ),
                          margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                          child: IconButton(
                            onPressed: () {
                              setState(() {myAlign = Alignment.center;});
                            },
                            icon: Icon(Icons.fiber_manual_record_outlined,size: 30,),

                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            shape: BoxShape.circle
                          ),
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 15),
                          child: IconButton(
                            onPressed: () {
                              setState(() {myAlign = Alignment.centerRight;});
                            },
                            icon: Icon(Icons.chevron_right,size: 35,),

                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Random random = Random();
            int ramColor = random.nextInt(12);
            double ramShape = random.nextInt(100).toDouble();
            List<double> ramSize = [random.nextInt(180-30+1)+30,random.nextInt(120-30+1)+30];
            debugPrint(ramColor.toString() + col[ramColor].toString());
            setState(() {
              if(ramColor != 4){
                myColor = col[ramColor];
              }else{
                myColor = Colors.grey;
              }

             myShape = ramShape;
             mySize = ramSize;
            });
          },
          child:Icon( Icons.question_mark),
      ),
    );
  }
}