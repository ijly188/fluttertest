import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold (
        appBar: AppBar(
          title: Text('商品列表')
        ),
        // body: ProductManager(startingProduct: 'test'),
        body: ProductManager(startingProduct: null),      //  在flutter裡面的命名沒有底線這件事，他會把底線轉為大寫，這邊存進來的不是page，因為在body裡面
      );
    }
}