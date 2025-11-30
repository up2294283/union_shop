import 'models/product.dart';

class CartService {
  static final List<Map<String, dynamic>> _cart = [];

  static void add(Product p, int quantity) {
    _cart.add({
      "product": p,
      "quantity": quantity,
    });
  }

  static List<Map<String, dynamic>> get items => _cart;

  static double get total =>
      _cart.fold(0, (sum, item) => sum + item["product"].price * item["quantity"]);
}