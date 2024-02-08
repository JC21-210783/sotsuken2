import 'package:flutter/material.dart';
import '../component/AppbarComp.dart';

class StateIngredientDetails extends StatefulWidget{
  const StateIngredientDetails({super.key});

  @override
  State<StateIngredientDetails> createState(){
    return IngredientDetails();
  }
}

class IngredientDetails extends State<StateIngredientDetails>{

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[Colors.white,Color(0xFF90D4FA)],
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppbarComp(),
        body: Center(
          child:SingleChildScrollView(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color:Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(4,4)
                      )
                    ],
                  ),
                  child:Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    padding: const EdgeInsets.fromLTRB(10, 7, 0, 7),
                    child:  FittedBox(
                      child:RichText(
                        text:const TextSpan(
                            children: [
                              TextSpan(
                                text:'| ',
                                style: TextStyle(
                                    fontSize: 35,
                                    color:Colors.indigo,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              TextSpan(
                                text:'追加成分詳細',
                                style: TextStyle(
                                    fontSize: 27,
                                    color:Colors.indigo,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color:Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(7,7)
                      )
                    ],
                  ),
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text('aaa'),
                      ]
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}