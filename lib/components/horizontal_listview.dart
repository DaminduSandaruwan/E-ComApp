import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/category/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'assets/images/category/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'assets/images/category/jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'assets/images/category/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'assets/images/category/shoe.png',
            image_caption: 'Shoe',
          ),
          Category(
            image_location: 'assets/images/category/informal.png',
            image_caption: 'Informal',
          ),
          Category(
            image_location: 'assets/images/category/accessories.png',
            image_caption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              height: 80,
              width: 100,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


