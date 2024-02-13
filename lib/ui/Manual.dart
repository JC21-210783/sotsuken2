import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../ui/ManualAnotherAdd.dart';
import '../ui/ManualUserAdd.dart';
import '../ui/ManualAddChange.dart';
import '../ui/ManualDeleteUser.dart';

class Manual_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const  Text('ご利用方法'),
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
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 15),
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
                                  color:Colors.deepOrange,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            TextSpan(
                              text:'ご利用方法',
                              style: TextStyle(
                                  fontSize: 25,
                                  color:Colors.deepOrange,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int counter = 1 ; counter < 10 ; counter++)...[
                    if(counter % 2 == 0)...[
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        height: 20, width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ]else...[
                      Container(
                        height: 14, width: 14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ],
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400
                ),
                child:Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color:Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(5,5)
                        )
                      ]
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                    padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
                    child: const FittedBox(
                      child:Text(
                        ' 本製品をご利用いただき、\nありがとうございます。'
                            '\n\n'
                            '本製品はAIを使用したアプリに\nなっており、登録成分の有無を\n検知します。'
                            '\n\n'
                            '「食品」と「美容」の２品目\n'
                            '   ご利用いただけますので、'
                            '\n用途に合わせて選択してください。',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int counter = 1 ; counter < 10 ; counter++)...[
                    if(counter % 2 == 0)...[
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        height: 20, width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ]else...[
                      Container(
                        height: 14, width: 14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ],
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 400
                ),
                child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                           BoxShadow(
                              color:Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(5,5)
                          )
                        ]
                    ),
                    child:Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                          alignment: Alignment.topLeft,
                          child:FittedBox(
                            child:RichText(
                                text: const TextSpan(
                                    style: TextStyle(color:Colors.black,),
                                    children: [
                                      TextSpan(
                                          text:'<ご利用の際の注意事項>\n',
                                          style: TextStyle(color:Colors.red,fontSize: 23,fontWeight: FontWeight.bold,height: 0.3)
                                      ),
                                    ]
                                )
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child:FittedBox(
                            child: RichText(
                              text: const TextSpan(
                                  style: TextStyle(color:Colors.black,),
                                  children: [
                                    TextSpan(
                                        text:'・ネットワークの接続について\n',
                                        style: TextStyle(color:Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold,height: 2)
                                    ),
                                    TextSpan(
                                      text:'　AIサービスのご利用にあたって、\n　ネットワークが必要になります。\n'
                                          '',
                                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                    ),

                                    TextSpan(
                                      text:'・ユーザーの登録について\n',
                                      style: TextStyle(color:Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold,height: 2.5),
                                    ),
                                    TextSpan(
                                      text:'　本製品はユーザー情報を登録して\n　ご利用いただけます。\n'
                                          '　また、SKIPにて登録せずにご利用\n　いただくこともできます。\n',
                                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                    ),

                                    TextSpan(
                                      text:'・追加成分の登録について\n',
                                      style: TextStyle(color:Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold,height: 2.5),
                                    ),
                                    TextSpan(
                                      text:'　既存の項目以外のアレルゲンや、\n　苦手な成分をご登録いただけます。\n',
                                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                    ),

                                    TextSpan(
                                      text:'・写真のトリミングについて\n',
                                      style: TextStyle(color:Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.bold,height: 2.5),
                                    ),
                                    TextSpan(
                                      text:'　AIの精度を上げるため、原材料\n　または成分のみが映るように\n　トリミングを行ってください。',
                                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                    ),
                                  ]
                              ),

                            ),
                          ),

                        ),
                      ],
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int counter = 1 ; counter < 10 ; counter++)...[
                    if(counter % 2 == 0)...[
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        height: 20, width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ]else...[
                      Container(
                        height: 14, width: 14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ],
                ],
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 400
                ),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const  [
                        BoxShadow(
                            color:Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(5,5)
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                        alignment: Alignment.topLeft,
                        child:FittedBox(
                          child:RichText(
                              text: const TextSpan(
                                  style: TextStyle(color:Colors.black,),
                                  children: [
                                    TextSpan(
                                        text:'<その他の詳細説明>\n',
                                        style: TextStyle(color:Colors.red,fontSize: 23,fontWeight: FontWeight.bold,height: 1)
                                    ),
                                  ]
                              )
                          ),
                        ),
                      ),
                      FittedBox(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width:140,
                                height:130,
                                margin: const EdgeInsets.fromLTRB(10,0,10,10),
                                child:ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      elevation: 7
                                  ),
                                  onPressed: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context){
                                          return ManualAnotherAdd_Page();
                                        })
                                    );
                                  },
                                  child: const FittedBox(
                                    child:Column(
                                      children: [
                                        Icon(
                                          Icons.post_add,
                                          color: Colors.white,
                                          size:60,
                                        ),
                                        FittedBox(
                                            child:Text('追加成分の\n登録について',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Container(
                                width:140,
                                height:130,
                                margin: const EdgeInsets.fromLTRB(10,0,10,10),
                                child:ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      elevation: 7
                                  ),
                                  onPressed: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context){
                                          return ManualUserAdd_Page();
                                        })
                                    );
                                  },
                                  child: const FittedBox(
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.person_add,
                                          color: Colors.white,
                                          size:60,
                                        ),
                                        FittedBox(
                                            child:Text('ユーザーの\n登録について',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),

                      FittedBox(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width:140,
                                height:130,
                                margin: const EdgeInsets.fromLTRB(10,10,10,25),
                                child:ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      elevation: 7
                                  ),
                                  onPressed: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context){
                                          return ManualAddChange_Page();
                                        })
                                    );
                                  },
                                  child: const FittedBox(
                                    child:Column(
                                      children: [
                                        Icon(
                                          Icons.edit_document,
                                          color: Colors.white,
                                          size:60,
                                        ),
                                        FittedBox(
                                            child:Text('登録内容の\n変更について',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Container(
                                width:140,
                                height:130,
                                margin: const EdgeInsets.fromLTRB(10,10,10,25),
                                child:ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.deepOrange,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      elevation: 7
                                  ),
                                  onPressed: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context){
                                          return ManualDeleteUser_Page();
                                        })
                                    );
                                  },
                                  child: const FittedBox(
                                    child:Column(
                                      children: [
                                        Icon(
                                          Icons.person_remove,
                                          color: Colors.white,
                                          size:60,
                                        ),
                                        FittedBox(
                                            child:Text('ユーザーの\n削除について',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
