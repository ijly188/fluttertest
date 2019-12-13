import 'package:flutter/material.dart';   //引入扁平化設計的組件
/*
main(){
  runApp(MyApp());  // 運行下面定義的class
}
*/
// 可以簡寫成這樣子用箭頭函式
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final List<String> _products = ['food test', 'e8 e8 e8 e8 e8', 'aaaa'];     // 這個不知道在衝三小，但是簡單講就是加底線的變數就只能在這個東西裡面跑這樣
  // 這個新的類別會覆蓋他繼承的類別（提示作用而已）
  @override
  // 實作一個類別，他是繼承於剛剛引入的package中的stateless組建類別
  Widget build(BuildContext context) {
    // 這個function將輸出內容
    // context 將會有一個app的基本資訊
    return MaterialApp(
      home : Scaffold(                              // home裡面是一個scaffold，白色背景主題
        appBar : AppBar(                            // 增加一個bar
          title : Text('我的App')                    // 增加bar的標題
        ),                                         
        body : Column(
          children : [
            Container(
              margin : EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},                   //  尚未註冊點擊事件
                child: Text('Add Product'),         //  按鈕文字
              ),                                   
            ),                                     
            Column(                                 // Column
              children : _products.map((element) => Card(       // 建立一張卡片
                  child : Column(                               // 有一個欄位
                    children: <Widget>[                         // 一個放了很多組建的陣列
                      Image.asset('assets/food.jpg'), // 要這個設定的話，你要先去設定pubspec.yaml最下面去寫
                      //Text('Food Paradise')           // 內容文字，會出現在圖片下方
                      Text(element)
                    ],                               
                  )                                  
                )                                    
              ).toList(),
            ),                                     
            /*
            Card(                                   // 建立一張卡片
              child : Column(                       // 有一個欄位
                children: <Widget>[                 // 一個放了很多組建的陣列
                  Image.asset('assets/food.jpg'),   // 要這個設定的話，你要先去設定pubspec.yaml最下面去寫
                  Text('Food Paradise')             // 內容文字，會出現在圖片下方
                ],                                 
              )                                    
            )                                      
            */
          ]
        )
        
      ),                                           
    );                                             
    // 最後輸出結果要return出去他才知道
    // MaterialApp是整個扁平化app的最外層
  }
}
