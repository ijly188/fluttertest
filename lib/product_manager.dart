import 'package:flutter/material.dart';
import './product_control.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  // StatefulWidget是會隨著資料改變而改變的UI組件
  final String startingProduct;
  // 定義一個string變數
  // 這個startingProduct是從上層傳進來的一個變數，可以視為前端的props進來的東西
  // 外層定義的時候給他的型別是string進來這邊準備要接之前一樣我們先定義型別
  ProductManager({ this.startingProduct });
  // 建構函式，可以從他爸那邊拿值進來用，指父元件
  // (就是main.dart的ProductManager後面的小括號)
  @override
    State<StatefulWidget> createState() {
    // createState方法會回傳一個state組件
      return _ProductManagerState();
      // 上述的組件就是這個
    }
}

class _ProductManagerState extends State<ProductManager> {
  // state組件是ProductManager這個StatefulWidget的State
  // 這裡的白話文就是你要用ProductManager這個東西，但是他是在預設的class裡面，所以你要去找到預設的State裡面再去找本來定義好的方法
  final List<String> _products = [];
  // 因為他不會再被assign，所以加上final
  void initState() {
    // 初始化一個state，不會回傳值(是flutter裡面的一個生命週期)
    super.initState();  //  這裡可以隱藏
    // 下面程式若想要蓋掉初始值就要呼叫super
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
      // 把最外層的值放近來，此例就變成['test']
    }
  }
  void _addProduct(String product) {
    setState(() {
      // 一個可以改變state的function，限制只能傳string近來
      _products.add(product);
    });
  }
  @override
  Widget build(BuildContext context) {
    // build 函式才會真正把內容放到ui上
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct)
          // 裡面有一個按鈕，這邊如果把child助解掉的話連btn都沒有就不可能做觸發的動作了
          // 這裡定義了他的下一層的component是product_control
        ),
        Expanded(child: Products(_products))
        // 如果沒有加這段的話我們按了按鈕也不會新增我們的card
        // 這裡定義了我們要塞進去的東西子component然後我們傳進我們上面定義好的一個array，因為我們的product有可能有很多個
      ]
    );
  }
}

