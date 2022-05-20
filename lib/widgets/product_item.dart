import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/product.dart';
import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imgUrl;

  // ProductItem(this.id, this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile( // works well with grids - who would have thought!
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routePath, arguments: product.id,);
          },
          child: Image.network(
            product.imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              product.toggleFavStatus();
            },
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            product.title, 
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