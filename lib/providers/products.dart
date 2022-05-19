import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = []; // Private property

  // Items getter class
  List<Product> get items {
    return [..._items]; // Return reference
  }

  void addProduct() {
    // _items.add(value); 
    // Will add back in later after we add products
    notifyListeners();
  }
}