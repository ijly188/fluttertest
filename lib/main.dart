import 'package:flutter/material.dart';   // 引用material模板
import 'package:fluttertest/pages/home.dart';
//import './product_manager.dart';          // 引入寫好的檔案

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : ThemeData(
        primarySwatch: Colors.deepOrange, // 定義primary的顏色
        accentColor: Colors.deepPurple    // 定義提示顏色
      ),
      home : HomePage() //  好像妳建立的是頁面檔，命名規則就是檔名首字大寫，後面加上Page()這樣就可以了
    );
  }
}