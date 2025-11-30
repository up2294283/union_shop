import 'package:flutter/material.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../cart_service.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.asset(widget.product.image, height: 200),
          const SizedBox(height: 20),

          Text(
            widget.product.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text("£${widget.product.price}",
              style: const TextStyle(fontSize: 20, color: Colors.green)),

          const SizedBox(height: 20),

          Text(widget.product.description),

          const SizedBox(height: 20),

          Row(
            children: [
              IconButton(
                onPressed: () {
                  if (quantity > 1) setState(() => quantity--);
                },
                icon: const Icon(Icons.remove),
              ),
              Text(quantity.toString()),
              IconButton(
                onPressed: () => setState(() => quantity++),
                icon: const Icon(Icons.add),
              ),
            ],
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              context.read<CartService>().add(widget.product, quantity);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Added to cart')),
              );
            },
            child: const Text("Add to Cart"),
          )
        ],
      ),
    );
  }
}