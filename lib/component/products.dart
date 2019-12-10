import 'package:ecommerce/pages/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class products extends StatefulWidget {
  @override
  _productsState createState() => _productsState();
}

class _productsState extends State<products> {
  var product_list = [
    {
      "name": "Phone Cover",
      "picture": "images/products/cover.jpg",
      "old_price": 190,
      "price": 90,
    },
    {
      "name": "Eyes",
      "picture": "images/products/eyes.jpg",
      "old_price": 30,
      "price": 20,
    },
    {
      "name": "Hair Electronic",
      "picture": "images/products/hairelectron.PNG",
      "old_price": 300,
      "price": 150,
    },
    {
      "name": "S8 Samsung",
      "picture": "images/products/cover.jpg",
      "old_price": 500,
      "price": 450,
    },
    {
      "name": "Head Phone",
      "picture": "images/products/phonehead.jpg",
      "old_price": 100,
      "price": 80,
    },
    {
      "name": "Power Pank",
      "picture": "images/products/power.jpg",
      "old_price": 60,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (BuildContext Context, int index) {
        return Single_pord(
          product_name: product_list[index]["name"],
          product_pictur: product_list[index]["picture"],
          product_price: product_list[index]["price"],
          product_old_price: product_list[index]["old_price"],
        );
      },
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: product_list.length,
    );
  }
}

class Single_pord extends StatelessWidget {
  final product_name;
  final product_pictur;
  final product_old_price;
  final product_price;

  const Single_pord(
      {Key key,
      this.product_name,
      this.product_pictur,
      this.product_old_price,
      this.product_price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetials(
                    product_Detail_name: product_name,
                    product_Detail_product_old_price: product_old_price,
                    product_Detail_product_pictur: product_pictur,
                    product_Detail_product_price: product_price,
                  ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    title: Text(
                      "${product_price}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      "${product_old_price}",
                      style: TextStyle(
                          color: Colors.red.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                ),
                child: Image.asset(
                  product_pictur,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
