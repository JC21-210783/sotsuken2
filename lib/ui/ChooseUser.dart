import 'package:flutter/material.dart';
import 'package:sotsuken2/Api/verification.dart';
import 'package:sotsuken2/component/AppbarComp.dart';
import '../DB/Add.dart';
import '../DB/User.dart';
import 'CreateUser1.dart';
import 'Obligation_allergy.dart';
import 'ImageLoaderSelect.dart';
import 'package:sotsuken2/Data/AllObligationData.dart';
import 'package:sotsuken2/Data/AllRecommendationData.dart';
import 'package:sotsuken2/Data/AllAnotherData.dart';
import 'package:sotsuken2/component/HamburgerMenu.dart';

class StateChooseUser extends StatefulWidget{
  const StateChooseUser({super.key});

  @override
  State<StateChooseUser> createState(){
    return ChooseUser_Page();
  }
}

class ChooseUser_Page extends State<StateChooseUser>{

  AllObligationData aod = AllObligationData();
  AllRecommendationData ard = AllRecommendationData();
  AllAnotherData aad = AllAnotherData();
  DBuser dbUser = DBuser();//DBクラスのインスタンス生成

  void ReturnAndReload(int n) async{
    if(n == 0){
      await Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return const StateCreateUser1();
          })
      );
      setState((){});
    }else if(n == 1){
      await Navigator.pushNamed(context, 'SettingUser_page');
      setState((){
        aod.AllResetObligation();
        ard.AllResetRecommendation();
        aad.AllResetAnother();
      });
    }
  }
  

  //AllUserData aud = AllUserData(username: AllUserData.sUserName);
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
        child:Scaffold(
          backgroundColor: Colors.transparent,
          appBar:AppbarComp(),
          endDrawer: const SizedBox(
            width: 270,
            child:DrawerMenu(),
          ),
          //お試し
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight:  Radius.circular(40),
            ),
            child:BottomNavigationBar(
              backgroundColor: Colors.blue[400],
              fixedColor: Colors.white,

              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,size: 30,color:Colors.white),
                  label: 'home',
                ) ,
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,size: 30,color:Colors.white),
                  label: 'home',
                ) ,
              ],
            ),
          ),
          body: Center(
            child:Container(
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
              child:SingleChildScrollView(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(13, 40, 13, 20),
                        padding: const EdgeInsets.fromLTRB(40, 13, 40, 13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.indigo)
                        ),
                        child: const FittedBox(
                          child:Text('ユーザーの選択',
                            style: TextStyle(
                                fontSize: 26,
                                color:Colors.indigo,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),

                      Container(margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:Colors.blue,
                            width: 1,
                          ),
                        ),
                        child:Container(
                          width: 265,
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color:Colors.blue,
                              width: 1,
                            ),
                          ),
                          child:Column(
                            children: [
                              if(DBuser.userName.isEmpty)...[
                                Container(
                                    margin:const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                    child: const FittedBox(
                                      child:Text('ユーザーが\n登録されていません',
                                        style:TextStyle(
                                          fontSize: 25,color:Colors.black87,
                                          fontWeight: FontWeight.bold,
                                        ),textAlign: TextAlign.center,
                                      ),
                                    )
                                ),
                              ],
                              for(String n in DBuser.userName)...[
                                Container(
                                  width: 240,
                                  height: 47,
                                  margin: const EdgeInsets.all(2),
                                  child: OutlinedButton(
                                    child:Text(n,style: const TextStyle(fontSize: 25),),
                                    onPressed: () {
                                      print("選択されたユーザ$n");
                                      verifications.instance.selectName(n);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context){
                                            return StateImageLoderSelect();
                                          })
                                      );
                                    },
                                  ),
                                ),
                              ],

                            ],
                          ),


                        ),
                      ),

                      Container(
                        height: 55,
                        width: 240,
                        margin: const EdgeInsets.fromLTRB(0,10,0,5),
                        child:ElevatedButton(
                          style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              elevation: 7
                          ),
                          onPressed: (){
                            ReturnAndReload(0);
                          },
                          child: const FittedBox(
                            child: Text('新しいユーザを登録',
                              style:TextStyle(
                                fontSize: 23,
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),

                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(5, 5, 5, 30),
                            height: 55,
                            width: 120,
                            child:ElevatedButton(
                              style:ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange[700],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                elevation: 7
                              ),
                              onPressed: (){
                                ReturnAndReload(1);
                              },
                              child: const Text('設定',
                                style:TextStyle(
                                  fontSize: 23,
                                  color:Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(5, 5, 5, 30),
                              height: 55,
                              width: 120,
                              child:ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue[500],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    elevation: 7
                                ),
                                child: const Text('SKIP',
                                  style:TextStyle(
                                    fontSize: 23,
                                    color:Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: (){
                                  setState(() {
                                    aod.AllResetObligation();
                                    ard.AllResetRecommendation();
                                    _selectAdd();
                                    verifications.instance.selectName("スキップが押された");
                                  });
                                  Future.delayed(const Duration (seconds: 1)).then((_){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context){
                                        return  StateObligation_allergy(PageFlag: 'ChooseUser');
                                      }),
                                    );
                                    aad.AllResetAnother();
                                  });
                                },
                              )
                          ),
                        ],
                      ),
                    ],
                  )
              ),
            ),


          ),
        )
    );
  }
  DBadd dbAdd = DBadd();//DBクラスのインスタンス生成

  void _selectAdd() async {
    debugPrint('_selectAddにきました');
    final List<String> hiragana = await dbAdd.selectAdd();//ひらがなslectメソッド結果
    final List<String> import = DBadd.AddList;//import結果
    debugPrint('追加成分の内容:$hiragana');
    debugPrint('Addlistをimportした結果：$import');
    debugPrint(DBadd.AddList.toString());
  }
}