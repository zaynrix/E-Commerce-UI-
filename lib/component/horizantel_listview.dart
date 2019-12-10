import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class horizantel_listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[



          category(
            image_location: "images/category_png/books.png",
            image_caption: "Books",
          ),


          category(
            image_location: "images/category_png/elcton.png",
            image_caption: "Electonic",
          ),


          category(
            image_location: "images/category_png/tall.png",
            image_caption: "Clothes",
          ),


          category(
            image_location: "images/category_png/kreem.png",
            image_caption: "Makeups",
          ),


          category(
            image_location: "images/category_png/phones.png",
            image_caption: "Phones",
          ),


          category(
            image_location: "images/category_png/toys.png",
            image_caption: "Kids",
          ),

        ],
      ),
    );
  }
}

class category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const category({Key key, this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 150,
//          height: 220,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption,style: TextStyle(fontSize: 16,color: Colors.black54),),
            ),

          ),
        ),
      ),
    );
  }
}
