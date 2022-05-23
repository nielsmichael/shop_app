import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  // Build constructor
  CartItem({
    @required this.id, 
    @required this.title, 
    @required this.quantity, 
    @required this.price,
});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  // Get items
  Map<String, CartItem> get items {
    return {..._items}
  }

  void addItem(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      // change quantity...
      _items.update(productId, (existingCartItem) => CartItem( // existingCartItem allows us to pass the old items into the new
        id: existingCartItem.id, 
        title: existingCartItem.title, 
        quantity: existingCartItem.quantity + 1, 
        price: existingCartItem.price
        ),
      );
    } else {
      _items.putIfAbsent(productId, () => CartItem(
        id: DateTime.now().toString(), 
        title: title, 
        price: price
        ),
      );
    }
  }
}