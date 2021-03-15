import 'package:ecommerce/pages/cart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ecommerce/pages/login.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  final String mailState;
  final String userNameState;
  DrawerPage({Key key, this.mailState, this.userNameState}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

final GoogleSignIn googleSignIn = new GoogleSignIn();

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          //  header
          new UserAccountsDrawerHeader(
            accountName: Text("${widget.userNameState}"),
            accountEmail: Text("${widget.mailState}"),
            currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            )),
            decoration: new BoxDecoration(color: Colors.pink),
          ),

          //   body
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home, color: Colors.pink),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.person, color: Colors.pink),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shopping_basket, color: Colors.pink),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },
            child: ListTile(
              title: Text("Shopping Cart"),
              leading: Icon(Icons.shopping_cart, color: Colors.pink),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Favourites"),
              leading: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("About"),
              leading: Icon(
                Icons.help,
              ),
            ),
          ),

          InkWell(
            onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Login()));
            },
            child: ListTile(
              title: Text("Log Out"),
              leading: Icon(
                Icons.logout,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
