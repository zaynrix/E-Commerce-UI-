import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/component/horizantel_listview.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/component/products.dart';
void main() {
  runApp(new MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_car = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/pro/m1.jpg"),
          AssetImage("images/pro/m2.jpg"),
          AssetImage("images/pro/m3.jpg"),
          AssetImage("images/pro/m4.png"),
          AssetImage("images/pro/m5.jpg"),
          AssetImage("images/pro/m6.jpg"),
        ],
        autoplay: true,
        dotSize: 8,
        indicatorBgPadding: 10,
        dotColor: Colors.grey,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(
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
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Yahya Abu Nada"),
              accountEmail: Text("zayns19194@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage("images/yahya.jpg"),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red.shade400,
              ),
            ),
            InkWell(
              onTap: () => debugPrint("home Page"),
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("My Account"),
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("My Orders"),
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("Category"),
              child: ListTile(
                title: Text("Category"),
                leading: Icon(Icons.category),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("Favorite"),
              child: ListTile(
                title: Text("Favorite"),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(color: Colors.black,indent: 10.0,endIndent: 58.0,),
            InkWell(
              onTap: () => debugPrint("Setting"),
              child: ListTile(
                title: Text("Favorite"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () => debugPrint("Help"),
              child: ListTile(
                title: Text("Help"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_car,
          new Padding(
            padding: EdgeInsets.all(8.0),
            child: new Text(
              "Category",
              style: TextStyle(fontSize: 17),
            ),
          ),
          horizantel_listview(),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text(
              "Recent Product",
              style: TextStyle(fontSize: 17),
            ),
          ),
        Container(
          height:  230.0,
          child: products(),
        ),





        ],
      ),
    );
  }
}
