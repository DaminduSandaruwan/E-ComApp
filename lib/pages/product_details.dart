import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({this.product_details_name, this.product_details_new_price, this.product_details_old_price, this.product_details_picture});  

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Text("ShopApp"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){
              
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){

            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: Container(
                color: Colors.black87,
                child: ListTile(
                  leading: Text(
                    widget.product_details_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_details_old_price}",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_details_new_price}",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ], 
      ),
    );
  }
}