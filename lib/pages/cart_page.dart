import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/cart_service.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartService = context.watch<CartService>();
    final cartItems = cartService.items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                final product = item['product'];
                final quantity = item['quantity'];

                return ListTile(
                  leading: Image.asset(product.image, width: 50, height: 50),
                  title: Text(product.name),
                  subtitle: Text('Quantity: $quantity'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('£${(product.price * quantity).toStringAsFixed(2)}'),
                      IconButton(
                        icon: const Icon(Icons.remove_shopping_cart),
                        onPressed: () {
                          context.read<CartService>().remove(product.id);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: £${cartService.total.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Checkout functionality not implemented
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Checkout is not implemented yet.')),
                    );
                  },
                  child: const Text('Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

