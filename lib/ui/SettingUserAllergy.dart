import 'package:flutter/material.dart';
import 'package:sotsuken2/Data/AllAnotherData.dart';
import 'package:sotsuken2/Data/AllObligationData.dart';
import 'package:sotsuken2/Data/AllRecommendationData.dart';

import '../DB/Database.dart';

class StateSettingAllergy extends StatefulWidget{
  const StateSettingAllergy({super.key});

  @override
  State<StateSettingAllergy> createState(){
    return SettingAllergy();
  }
}

class SettingAllergy extends State<StateSettingAllergy>{
  static String HObligation = "";
  static String HRecommendation = "";
  static String HAnother = "";

  AllObligationData aod = AllObligationData();
  AllRecommendationData ard = AllRecommendationData();
  AllAnotherData aad = AllAnotherData();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('成分チェッカー'),
      ),
      body:  Center(
        child:SingleChildScrollView(
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    decoration:const BoxDecoration(
                      color: Colors.deepOrange,
                    ),
                    child: const Text('アレルゲンの変更',
                        style: TextStyle(
                            fontSize: 25,
                            color:Colors.white,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),

                  //表示義務
                  if(aod.getValueCheck().isNotEmpty)...[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40, 120, 0),
                      decoration:BoxDecoration(
                          border:Border.all(color:Colors.red,width:1)
                      ),

                      child: Container(
                        margin:const EdgeInsets.fromLTRB(5, 5, 5, 5),
                        padding:const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        decoration:BoxDecoration(
                            border:Border.all(color:Colors.red,width:1)
                        ),
                        child:const Text('表示義務',
                            style:TextStyle(
                                fontSize:25,
                                fontWeight: FontWeight.bold,
                                color:Colors.deepOrange
                            )
                        ),
                      ),
                    ),
                    Container(
                      width: 280,
                      margin: const EdgeInsets.fromLTRB(15, 5, 15, 30),
                      padding:const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      decoration:BoxDecoration(
                          border:Border.all(color:Colors.red,width:1)
                      ),
                      //テキスト表示させるやつがいる↓
                      child:Text(HObligation,
                        style:const TextStyle(
                          height: 1.4,
                          fontSize:23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],

                  //表示推奨
                  if(ard.getValueCheck2().isNotEmpty)...[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                      decoration:BoxDecoration(
                          border:Border.all(color:Colors.blue,width:1)
                      ),
                      child:Container(
                        margin:const EdgeInsets.fromLTRB(5, 5, 5, 5),
                        padding:const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        decoration:BoxDecoration(
                            border:Border.all(color:Colors.blue,width:1)
                        ),
                        child:const Text('表示推奨',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold,color:Colors.indigo)),
                      ),
                    ),
                    Container(
                      width: 280,
                      margin: const EdgeInsets.fromLTRB(15, 5, 15, 30),
                      padding:const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      decoration:BoxDecoration(
                          border:Border.all(color:Colors.blue,width:1)
                      ),
                      //テキスト表示させるやつがいる↓
                      child:Text(HRecommendation,
                        style:const TextStyle(
                          height: 1.4,
                          fontSize:23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],

                  //追加成分
                  if(aad.getValueCheck3().isNotEmpty)...[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                      decoration:BoxDecoration(
                          border:Border.all(color:Colors.amber,width:1)
                      ),
                      child:Container(
                        margin:const EdgeInsets.fromLTRB(5, 5, 5, 5),
                        padding:const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        decoration:BoxDecoration(
                            border:Border.all(color:Colors.amber,width:1)
                        ),
                        child:const Text('その他の成分',style:TextStyle(fontSize:25,fontWeight: FontWeight.bold,color:Colors.orange)),
                      ),
                    ),
                    Container(
                      width: 280,
                      margin: const EdgeInsets.fromLTRB(15, 5, 15, 30),
                      padding:const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      decoration:BoxDecoration(
                          border:Border.all(color:Colors.amber,width:1)
                      ),
                      //テキスト表示させるやつがいる↓
                      child:Text(HAnother,
                        style:const TextStyle(
                          height: 1.4,
                          fontSize:23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                  Container(
                      width:230,
                      height:60,
                      margin:const EdgeInsets.fromLTRB(15, 0, 15, 40),
                      child:ElevatedButton(
                          child:const Text('登録',style:TextStyle(fontSize:30,fontWeight: FontWeight.bold)),
                          onPressed:(){
                            setState(() {

                            });
                          }
                      )
                  )
                ]
            )
        ),

      ),
    );
  }

}