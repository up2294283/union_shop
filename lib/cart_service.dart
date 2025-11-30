import 'package:flutter/material.dart';
import 'models/product.dart';

class CartService extends ChangeNotifier {
  static final CartService _instance = CartService._internal();
  factory CartService() => _instance;
  CartService._internal();

  final List<Map<String, dynamic>> _cart = [];

  void add(Product p, int quantity) {
    // Check if product is already in cart
    for (var item in _cart) {
      if (item["product"].id == p.id) {
        item["quantity"] += quantity;
        notifyListeners();
        return; // Exit if found and updated
      }
    }

    // If not found, add as a new item
    _cart.add({
      "product": p,
      "quantity": quantity,
    });
    notifyListeners();
  }

  void remove(String productId) {
    _cart.removeWhere((item) => item['product'].id == productId);
    notifyListeners();
  }

  List<Map<String, dynamic>> get items => _cart;

  int get itemCount => _cart.fold(0, (total, current) => total + current['quantity'] as int);

  double get total =>
      _cart.fold(0, (sum, item) => sum + item["product"].price * item["quantity"]);
}