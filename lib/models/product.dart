import 'package:flutter/foundation.dart';

class Product { // Not widget, just a class for model
  final String id;
  final String title;
  final String description;
  final double price; // Type: double allows for decimal places
  final String imgUrl;
  bool isFavorite;

  Product({
    @required this.id, 
    @required this.title, 
    @required this.description, 
    @required this.price, 
    @required this.imgUrl, 
    this.isFavorite = false,
    });
}