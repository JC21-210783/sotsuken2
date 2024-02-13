import 'package:flutter/material.dart';

//追加成分登録についてのページ用
class ManualAddChange_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                margin: const EdgeInsets.fromLTRB(10,40,10,10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrange),
                ),
                child:Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                  ),
                  child:const Text('登録内容の変更について',
                    style: TextStyle(fontSize: 25,color: Colors.deepOrange,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin:const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child:Image.asset('images/ManualAddChange.png'),
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
