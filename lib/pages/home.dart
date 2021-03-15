import 'package:ecommerce/pages/drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/components/horizontal_listview.dart';
import 'package:ecommerce/components/products.dart';
import 'package:ecommerce/pages/cart.dart';

class HomePage extends StatefulWidget {
  final String mailState;
  final String userNameState;

  HomePage({Key key, this.mailState, this.userNameState}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w4.jpeg"),
          AssetImage("images/w3.jpeg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        //    dotColor: Colors.pink,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: Text("ShopApp"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: DrawerPage(
          mailState: widget.mailState.toString(),
          userNameState: widget.userNameState.toString()),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          imageCarousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Categories"),
          ),

          //Horizontal listview begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Text("Recent Products"),
          ),

          //gridview
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
