import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products;
  // 定義一個products陣列
  // 這個product陣列是從外面傳進來的定義的地方是在product_manager裡面的_products變數，因為這邊接近來的變數有可能是很多的值所以定義為array是合理的
  // 這個地方要注意的事情是從外面街道一個array近來以後我們要宣告的東西是List這個比較值得想一下
  Products(this.products);
  // 從父層去接_products
  Widget _buildProductItem(BuildContext context, int index) {
  //上一篇有提到，若陣列長度大於零，才會跑這個function渲染出卡片
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar( //增加一個buttonBar
            alignment: MainAxisAlignment.center, 
            //主軸對齊：垂直置中 
            children: <Widget>[
              FlatButton(
              //扁平化按鈕
                child: Text('Details'),
                //按鈕文字
                onPressed: () => Navigator.push(
                //按下去以後，把新的一頁蓋到目前頁面上
                  context,
                  //舊的資訊先傳進來
                  MaterialPageRoute(
                  //傳一個route組件進來
                    builder: (BuildContext context) => ProductPage(),
                    //建好後，切到剛剛引入的productPage()
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget _buildProductList() {
    Widget productCard;
    // 定義一個組件變數
    if(products.length > 0) {
      // 若陣列有東西
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
      // 變數就是一個ListView組件使用builder方法
      // 每一圈的組件(_buildProductItem)以及總共幾圈(Products.length)
      // 這樣就不用寫map
    } else {
      productCard = Container();
      // 不然就回傳空畫面
    }
    return productCard;
  }
  @override
    Widget build(BuildContext context) {
      return _buildProductList();
    }
}