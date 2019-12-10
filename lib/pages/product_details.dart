import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/component/horizantel_listview.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/component/products.dart';


class ProductDetials extends StatefulWidget {
  final product_Detail_name ;
  final product_Detail_product_pictur ;
  final product_Detail_product_old_price ;
  final product_Detail_product_price ;

  const ProductDetials({Key key, this.product_Detail_name, this.product_Detail_product_pictur, this.product_Detail_product_old_price, this.product_Detail_product_price}) : super(key: key);


  @override
  _ProductDetialsState createState() => _ProductDetialsState();
}

class _ProductDetialsState extends State<ProductDetials> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: new AppBar(
            title: Text("ShopApp"),
            backgroundColor: Colors.red,
            actions: <Widget>[
              new IconButton(
                  icon: Icon(Icons.search), onPressed: () => debugPrint("hello")),
              new IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () => debugPrint("hello")),
            ],
          ),
body: ListView(
  children: <Widget>[
    Container(
      height: 250,
      child: GridTile(
      child: Container(
        color:Colors.white,
        child: Image.asset(widget.product_Detail_product_pictur),
      ),

      ),
    )
  ],
),
    );

  }
}
