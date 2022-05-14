import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/product.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;

  ProductItem(this.id, this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile( // works well with grids - who would have thought!
        child: Image.network(
          imgUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            title, 
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(icon: Icon(
            Icons.shopping_cart,
            ), 
            onPressed: () {},
            color: Theme.of(context).accentColor,
            ),
        ),
      ),
    );
  }
}