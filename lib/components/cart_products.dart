import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_cart = [
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
        itemCount: Product_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Product_on_the_cart[index]["name"],
            cart_prod_color: Product_on_the_cart[index]["color"],
            cart_prod_qty: Product_on_the_cart[index]["quantity"],
            cart_prod_size: Product_on_the_cart[index]["size"],
            cart_prod_price: Product_on_the_cart[index]["price"],
            cart_prod_picture: Product_on_the_cart[index]["picture"],
          );
        });
  }
}


class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

Single_cart_product({
  this.cart_prod_name,
  this.cart_prod_picture,
  this.cart_prod_price,
  this.cart_prod_size,
  this.cart_prod_color,
  this.cart_prod_qty,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//   ========== leading section ==============
        leading: new Image.asset(cart_prod_picture, width: 80.0,
        height: 80.0,),

// ============= title section ===============
        title: new Text(cart_prod_name),

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
                  child: new Text(cart_prod_size, style: TextStyle(color: Colors.pink),),
                ),

//   ============== this section of for the product color ====================
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                child: new Text("Color:"),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color, style: TextStyle(color: Colors.pink),),
                ),
              ],
            ),

// ========== this section is for the product price ====================
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_price}", 
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
            new Text("$cart_prod_qty", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            new IconButton(icon: Icon(Icons.arrow_drop_down, color: Colors.pink,), iconSize: 38, onPressed: () {}),
          
          ],
        ),
      ),
    ));
  }

}