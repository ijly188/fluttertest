import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  // 定義一個function來接父曾傳來的function
  ProductControl(this.addProduct);
  // 從product_manager.dart的ProductControl後面的小括號傳進來的
  @override
    Widget build(BuildContext context){
      return RaisedButton(
        color: Theme.of(context).primaryColor,
        // 使用在main定義個primary顏色（此例為橘色）
        onPressed: () {
          // 按下按鈕後
          addProduct('Sweet');
          // 把Sweet傳進去function，往上觸發去改變state
          // 寫在state裡面的_products就會加入一個元素
          // 此例為['Sweet']
        },
        child: Text('Add Product'),
        // 按鈕的文字
      );
    }
}