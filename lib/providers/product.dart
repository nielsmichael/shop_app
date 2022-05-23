import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  // Not widget, just a class for model
  final String id;
  final String title;
  final String description;
  final double price; // Type: double allows for decimal places
  final String imgUrl;
  bool isFavorite;

  // Class Constructor
  // Initialize variables
  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imgUrl,
    this.isFavorite = false,
  });

  void toggleFavStatus() {
    isFavorite = !isFavorite;
    notifyListeners(); // Sort of like setState within the provider pkg
  }
}
