import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productOnTheCart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size":"M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size":"7",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size":"7",
      "color": "Red",
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: productOnTheCart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cartProdName: productOnTheCart[index]["name"],
            cartProdColor: productOnTheCart[index]["color"],
            cartProdQty: productOnTheCart[index]["quantity"],
            cartProdSize: productOnTheCart[index]["size"],
            cartProdPrice: productOnTheCart[index]["price"],
            cartProdPicture: productOnTheCart[index]["picture"],
          );
        });
  }
}


class SingleCartProduct extends StatelessWidget {
  final cartProdName;
  final cartProdPicture;
  final cartProdPrice;
  final cartProdSize;
  final cartProdColor;
  final cartProdQty;

SingleCartProduct({
  this.cartProdName,
  this.cartProdPicture,
  this.cartProdPrice,
  this.cartProdSize,
  this.cartProdColor,
  this.cartProdQty,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//   ========== leading section ==============
        leading: new Image.asset(cartProdPicture, width: 80.0,
        height: 80.0,),

// ============= title section ===============
        title: new Text(cartProdName),

// ============ subtitle section =============
        subtitle: new Column(
          children: <Widget>[

            //row inside the column
            new Row(
              children: <Widget>[
                
                //this section is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cartProdSize, style: TextStyle(color: Colors.pink),),
                ),

//   ============== this section of for the product color ====================
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cartProdColor, style: TextStyle(color: Colors.pink),),
                ),
              ],
            ),

// ========== this section is for the product price ====================
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$$cartProdPrice", 
                style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink
                  ),
              ),
            ),
          ],
        ),

        trailing: FittedBox(fit: BoxFit.fill,
        child: Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up, color: Colors.pink,), iconSize: 38, onPressed: () {}),
            new Text("$cartProdQty", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            new IconButton(icon: Icon(Icons.arrow_drop_down, color: Colors.pink,), iconSize: 38, onPressed: () {}),
          
          ],
        ),
      ),
    ));
  }

}