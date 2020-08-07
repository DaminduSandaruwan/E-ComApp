import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Blazer",
      "picture":"assets/images/products/blazer1.jpeg",
      "old_price":120,
      "price":85,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}