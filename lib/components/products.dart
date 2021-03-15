import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 100,
      "price": 50,
    },
    {
      "name": "Shoe",
      "picture": "images/products/hills1.jpeg",
      "oldPrice": 400,
      "price": 340,
    },
    {
      "name": "Blazer",
      "picture": "images/products/skt1.jpeg",
      "oldPrice": 180,
      "price": 100,
    },
    {
      "name": "Skt",
      "picture": "images/products/skt2.jpeg",
      "oldPrice": 150,
      "price": 70,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "oldPrice": 200,
      "price": 170,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
            ),

      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleProd(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['old_price'],
          prodPrice: productList[index]['price'],
        ),
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SingleProd({
      this.prodName,
      this.prodPicture,
      this.prodOldPrice,
      this.prodPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
      tag: new Text("hero 1"),
      child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(

          //here we are passing the values of the product to the product details page
          builder: (context) => new ProductDetails(
            productDetailName: prodName,
            productDetailNewPrice: prodPrice,
            productDetailOldPrice: prodOldPrice,
            productDetailPicture: prodPicture,

          ))),
        
        child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: Text(prodName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),),
                  new Text("\$$prodPrice", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 15.0))
                ],
              )
            ),
            child: Image.asset(
              prodPicture,
              fit: BoxFit.cover,
            )),
      )),
    ));
  }
}
