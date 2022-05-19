import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/products.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context); // Listens for changes in Products
    final products = productsData.items;
    return GridView.builder( // This renders only items that are on the screen, helping with performance in the case of a particularly long list of items (in this case, products)
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length, // Tells gridview how many items to build
      itemBuilder: (ctx, i) => ProductItem(
        products[i].id, 
        products[i].title, 
        products[i].imgUrl
      ), // Fwd to ProductItem widget
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        childAspectRatio: 3 / 2, 
        crossAxisSpacing: 10, 
        mainAxisSpacing: 10
      ), // How grid should be structured - esp. columns
    );
  }
}