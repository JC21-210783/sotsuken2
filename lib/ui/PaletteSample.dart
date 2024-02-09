import 'package:flutter/material.dart';
import 'dart:math';

import '../component/AppbarComp.dart';

class StateSecretFile extends StatefulWidget{
  const StateSecretFile({super.key});

  @override
  State<StateSecretFile> createState(){
    return SecretFile();
  }
}

class SecretFile extends State<StateSecretFile> {
  var myColor = Colors.grey;
  var myShape = 0.0;
  List<double> mySize = [100,100];
  List col = [Colors.red,Colors.blue,Colors.yellow,Colors.green,Colors.black38,Colors.brown,Colors.deepPurple,
              Colors.lightBlue,Colors.lightGreen,Colors.pink,Colors.orange,Colors.indigo];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppbarComp(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                        onPressed: (){
                          setState(() {mySize[0] = 180; mySize[1] = 100;});
                        },
                        child: Text('横長',style: TextStyle(fontSize: 20),)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        onPressed: (){
                          setState(() {mySize[1] = 100; mySize[0] = 100;});
                        },
                        child: Text('正方形',style: TextStyle(fontSize: 20),)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        onPressed: (){
                          setState(() {mySize[1] = 150; mySize[0] = 100;});
                        },
                        child: Text('縦長',style: TextStyle(fontSize: 20),)
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              width: mySize[0],
              height: mySize[1],
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                color: myColor,
                borderRadius: BorderRadius.circular(myShape),
                //borderRadius: BorderRadius.circular(30)
              ),
              duration: Duration(milliseconds: 400),
            ),
            Container(
              width: 300,
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
                        margin:EdgeInsets.fromLTRB(10, 15, 5, 15),
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
                        margin:EdgeInsets.fromLTRB(5, 15, 5, 15),
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
                        margin:EdgeInsets.fromLTRB(5, 15, 5, 15),
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
                        margin:EdgeInsets.fromLTRB(5, 15, 5, 15),
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
                        margin:EdgeInsets.fromLTRB(5, 15, 10, 15),
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
                        margin:EdgeInsets.fromLTRB(5, 15, 10, 15),
                        child:OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey ,width:3),
                            backgroundColor: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            )
                          ),
                            onPressed: (){
                              setState(() {myShape = 50;});
                            },
                            child: null,
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        margin:EdgeInsets.fromLTRB(10, 15, 10, 15),
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
                        margin:EdgeInsets.fromLTRB(10, 15, 5, 15),
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
            /*
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //△ボタンのムーブ
                Container(
                  width:50,
                  child: IconButton(
                    onPressed: () {  },
                    icon: Icon(Icons.arrow_back_ios,size: 50,),
                    
                  ),
                ),
                Container(
                  width:50,
                  height:50,
                  child: IconButton(
                    onPressed: () {  },
                    icon: Icon(Icons.arrow_forward_ios,size: 50,),

                  ),
                )
              ],
            )

             */
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Random random = Random();
            int ramColor = random.nextInt(12);
            double ramShape = random.nextInt(30).toDouble();
            List<double> ramSize = [random.nextInt(200-30+1)+30,random.nextInt(150-30+1)+30];

            /*
            var myColor = Colors.grey;
            var myShape = 0.0;
            List<double> mySize = [100,100];

             */
            setState(() {
             debugPrint('ramのなかみ$ramColor');
             myColor = col[ramColor];
             myShape = ramShape;
             mySize = ramSize;

            });
          },
          child:Icon( Icons.question_mark),
      ),
    );
  }
}