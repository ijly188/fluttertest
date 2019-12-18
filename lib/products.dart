import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  // 定義一個products陣列
  // 這個product陣列是從外面傳進來的定義的地方是在product_manager裡面的_products變數，因為這邊接近來的變數有可能是很多的值所以定義為array是合理的
  // 這個地方要注意的事情是從外面街道一個array近來以後我們要宣告的東西是List這個比較值得想一下
  Products(this.products);
  // 從父層去接_products
  Widget _buildProductItem(BuildContext context, int index) {
    // 一張卡片組件(一個商品) // 除了傳入app基本資訊  //  還要傳入目前跑到第幾圈
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index])
          // 因為這邊是放在Widget裡面，最外層釋放Card這個flutter預設的component
          // 該陣列的哪一圈的值
        ],
      )
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