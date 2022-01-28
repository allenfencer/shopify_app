import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  int cartCount = 0;
  int get count => cartCount;
  List<Item?> cart = [];

  addItemsToCart(Item? item) {
    cart.add(item);
    cartCount++;
    notifyListeners();
  }

  removeItemFromCart(List<Item> item) {
    cart.remove(item);
    cartCount--;
    notifyListeners();
  }
}
