import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sotsuken2/DB/Food.dart';
import 'package:sqflite/sqflite.dart';

import '../DB/Database.dart';

class Api{
  static List<String> contentList = [""];
  Api._();
  static final Api instance = Api._();

  Future<void> postData(XFile img) async {
    print("パス：" + img.path);

    // 型Fileのfileに画像パスを格納
    File file = File(img.path);
    // 画像のバイナリデータを読み込む
    ByteData data = await file.readAsBytes().then((bytes) =>
                          ByteData.sublistView(Uint8List.fromList(bytes)));
    // List変換
    List<int> imageBytes = data.buffer.asUint8List();

    // Azureにリクエスト送信。responseを変数に格納
    var response = await http
        .post(Uri.parse(
        'https://r05-jk3a15cognitive.cognitiveservices.azure.com/computervision/imageanalysis:analyze?language=ja&api-version=2023-02-01-preview&features=read'),
        headers: {
          'Ocp-Apim-Subscription-Key': '2a4e99f274a14a94a4b5f26077b97cf0',
          'Content-Type': 'application/octet-stream',
        },
        body: imageBytes
    );

    //responseの値をjson形式に変更
    Map<String, dynamic> jsonDataMap = json.decode(response.body);
    // "content"フィールドの値を取得
    String content = jsonDataMap['readResult']['content'];

    //contentの値を1行にする
    String contentMoji = content.replaceAll('\n', '');

    print(contentMoji);

    String genStr = "";

    if (contentMoji.contains("原材料")) {
      //原材料後、内容量までを保持
      RegExp genNai = RegExp(r"原材料名(.*?)[內内]容量(.*)");
      RegExp gen = RegExp(r"原材料名(.*)");
      RegExpMatch? matchGenNai = genNai.firstMatch(contentMoji);
      RegExpMatch? matchGen = gen.firstMatch(contentMoji);

      debugPrint("マッチしたか1:$matchGenNai");
      debugPrint("マッチしたか2:$matchGen");

      if (matchGenNai != null) {
        genStr = matchGenNai.group(1)!.trim();
        debugPrint("原材料後1：$genStr");
      } else if (matchGen != null) {
        genStr = matchGen.group(1)!.trim();
        debugPrint("原材料後2：$genStr");
      }
    } else if(contentMoji.contains("成分")){
      print("成分だった");

      RegExp biyo = RegExp(r"成分: *(.*)");
      RegExpMatch? matchbiyo = biyo.firstMatch(contentMoji);
      debugPrint("マッチしたか3:$matchbiyo");
      if (matchbiyo != null){
        genStr = matchbiyo.group(1)!.trim();
        debugPrint("成分後：$genStr");
      }

    }else{
      print("どちらでもない");

      genStr = contentMoji;
    }

    if(genStr.contains('、')){
      //、を見つけるまでを1要素として配列に格納する
      contentList = genStr.split('、');
    }else if(genStr.contains('·')){
      contentList = genStr.split('·');
    }else if(genStr.contains(',')){
      contentList = genStr.split(',');
    }

    contentList = contentList.where((element) => element.isNotEmpty).toList();
    
    debugPrint("読み込んだ文字：$contentList");
  }
  List<String> getContentList(){
    return contentList;
  }
}