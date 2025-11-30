import 'package:flutter/material.dart';
import 'models/product.dart';

class CartService {
  static final List<Map<String, dynamic>> _cart = [];
  static VoidCallback? onCartUpdated;

  static void add(Product p, int quantity) {
    // Check if product is already in cart
    for (var item in _cart) {
      if (item["product"].id == p.id) {
        item["quantity"] += quantity;
        onCartUpdated?.call();
        return; // Exit if found and updated
      }
    }

    // If not found, add as a new item
    _cart.add({
      "product": p,
      "quantity": quantity,
    });
    onCartUpdated?.call();
  }

  static void remove(String productId) {
    _cart.removeWhere((item) => item['product'].id == productId);
    onCartUpdated?.call();
  }

  static List<Map<String, dynamic>> get items => _cart;

  static double get total =>
      _cart.fold(0, (sum, item) => sum + item["product"].price * item["quantity"]);
}