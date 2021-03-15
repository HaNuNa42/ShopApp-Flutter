import 'package:flutter/material.dart';
import 'package:ecommerce/pages/home.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewPrice;
  final productDetailOldPrice;
  final productDetailPicture;

  ProductDetails(
      {this.productDetailName,
      this.productDetailNewPrice,
      this.productDetailOldPrice,
      this.productDetailPicture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: InkWell(
          onTap: () { Navigator.push(context, 
          MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text("ShopApp")),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white70,
                  child: Image.asset(widget.productDetailPicture),
                ),
                footer: new Container(
                  color: Colors.white70,

                  child: ListTile(
                    leading: new Text(
                      widget.productDetailName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: new Row(children: <Widget>[

                      Expanded(
                          child: new Text(
                        "\$${widget.productDetailOldPrice}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),

                      Expanded(
                        child: new Text("\$${widget.productDetailNewPrice}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            )),
                      )
                    ]),
                  ),
                ),
              )),

//      ============= the first buttons ==================
          Row(
            children: <Widget>[
//     ======= the size button =========
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(context: context, 
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose the size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: () {
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Close"),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),

//     ======= the Color button =========
              Expanded(
                  child: MaterialButton(
                 onPressed: () {
                  showDialog(context: context, 
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Colors"),
                      content: new Text("Choose a color"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: () {
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Close"),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Color"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),

//     ======= the Quantity button =========
              Expanded(
                  child: MaterialButton(
                 onPressed: () {
                  showDialog(context: context, 
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Quantity"),
                      content: new Text("Choose the quantity"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: () {
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Close"),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Quantity"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
            ],
          ),

//      ============= the second buttons ==================
          Row(
            children: <Widget>[
//     ======= the size button =========
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.pink,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy now"),
              )
              ),

            new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.pink,), onPressed: () {},),
            new IconButton(icon: Icon(Icons.favorite_border, color: Colors.pink,), onPressed: () {},),

            ],
          ),
          Divider(color: Colors.pink),
          new ListTile(
            title: new Text("Product deatils"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name:", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.productDetailName),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product brand:", style: TextStyle(color: Colors.grey),),),
              
              //remember to creae the product brand
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Brand X"),)
            ],
          ),

          //add the product condition
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product condition:", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("NEW"),),
            
            ],
          ),

        Divider(),
        Padding(padding: const EdgeInsets.all(8.0),
        child: new Text("Similar Products")),
      
        // similar product section
      Container(
        height: 340.0,
        child: SimilarProducts(),
      ),
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  
 var productList = [
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 100,
      "price": 50,
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
        return SimilarSingleProd(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['oldPrice'],
          prodPrice: productList[index]['price'],
        );
      });
  }
}

class SimilarSingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SimilarSingleProd({
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
