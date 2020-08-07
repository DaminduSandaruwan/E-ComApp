import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/category/logoo.png',
            image_caption: 'Category 1',
          ),
          Category(
            image_location: 'assets/images/category/logoo.png',
            image_caption: 'Category 2',
          ),
          Category(
            image_location: 'assets/images/category/logoo.png',
            image_caption: 'Category 3',
          ),
          Category(
            image_location: 'assets/images/category/logoo.png',
            image_caption: 'Category 3',
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


