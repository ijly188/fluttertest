import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title : Text('商品細節')
      ),
      //新的一頁的title
      body: Center(
        //置中
        child: Column(
          children: <Widget>[
            Text('Details'),
            RaisedButton(
              child: Text('Back'),
              onPressed: () => Navigator.pop(context),
              //pop會把剛剛蓋過去的，又pop上來(目前app狀態context要傳進去)
            )
          ]
        ),
      )
    );
  }
}
