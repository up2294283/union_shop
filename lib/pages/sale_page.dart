import 'package:flutter/material.dart';
import 'package:union_shop/models/product.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';
import 'package:union_shop/widgets/custom_footer.dart';
import 'package:union_shop/widgets/product_card.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy product data for the sale page
    final saleProducts = [
      const Product(
        id: 'sale1',
        name: 'Sale Item 1',
        description: 'A description for sale item 1.',
        image: 'assets/images/hoodie.jpg', // Placeholder image
        price: 15.00,
        collection: 'Sale',
      ),
      const Product(
        id: 'sale2',
        name: 'Sale Item 2',
        description: 'A description for sale item 2.',
        image: 'assets/images/T_shirt.jpg', // Placeholder image
        price: 20.00,
        collection: 'Sale',
      ),
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sale',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 4 : 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: saleProducts.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: saleProducts[index]);
                    },
                  ),
                ],
              ),
            ),
            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}