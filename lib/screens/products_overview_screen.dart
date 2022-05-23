import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

enum FilterOptions { // enums are ways of assigning labels to integers
  Favorites,
  All
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavs = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) { // Wrap with setState
                  _showOnlyFavs = true;
                } else {
                  _showOnlyFavs = false;
                }
              });
            },
            icon: Icon(Icons.more_vert,), 
            itemBuilder: (_) => [
            PopupMenuItem(child: Text("Only Favs"), value: FilterOptions.Favorites),
            PopupMenuItem(child: Text("Show All"), value: FilterOptions.All),
            ],
          ),
        ],
      ),
      body: ProductsGrid(_showOnlyFavs), 
    );
  }
}

