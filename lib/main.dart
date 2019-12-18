import 'package:flutter/material.dart';   // 引用material模板
import './product_manager.dart';          // 引入寫好的檔案

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
      home : Scaffold(
        appBar: AppBar(
          title: Text('我的Flutter APP')
        ),
        // body: ProductManager(startingProduct: 'Starting Product')
        body: ProductManager(startingProduct: null) //  如果預設給null的話就沒有預設的Product Card
        // 這裡的ProductManager是因為上面的./product_manager.dart來的，會往裡面去傳props進去我們的子component
      )
    );
  }
}