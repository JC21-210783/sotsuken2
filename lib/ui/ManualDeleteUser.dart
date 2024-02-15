import 'package:flutter/material.dart';

//追加成分登録についてのページ用
class ManualDeleteUser_Page extends StatelessWidget{

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
                margin: const EdgeInsets.fromLTRB(10,30,10,10),
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
                  margin: const EdgeInsets.fromLTRB(5,5,5,5),
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
                              text:'ユーザーの削除について',
                              style: TextStyle(
                                  fontSize: 22,
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
              Container(
                margin:const EdgeInsets.fromLTRB(10, 15, 10, 15),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:Image.asset('images/ManualDeleteUser.png'),
                ),
              ),
              Container(
                  width: 200,
                  height:50,
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 40),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 7
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text('戻る',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
