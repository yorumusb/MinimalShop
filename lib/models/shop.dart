import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: "Product1",
      price: 99.99,
      description: "Item description...",
      imagePath: 'assets/glasses.jpg',
    ),
    Product(
      name: "Product2",
      price: 99.99,
      description: "Item description...",
      imagePath: 'assets/hoodie.jpg',
    ),
    Product(
      name: "Product3",
      price: 99.99,
      description: "Item description...",
      imagePath: 'assets/shoes.jpg',
    ),
    Product(
      name: "Product4",
      price: 99.99,
      description: "Item description...",
      imagePath: 'assets/watch.jpg',
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
