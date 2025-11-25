import 'package:flutter/material.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';
import 'package:union_shop/widgets/custom_footer.dart';
import 'package:union_shop/widgets/product_card.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 600 ? 4 : 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.7,
                    children: const [
                      // For sale items, we can pass an `oldPrice` to the ProductCard
                      ProductCard(
                        title: 'Sale Item 1',
                        price: '£15.00',
                        oldPrice: '£25.00', // Add old price to show a discount
                        imageUrl:
                            'https://shop.upsu.net/cdn/shop/products/UoP_Tie-1_360x.jpg?v=1614778033',
                      ),
                      ProductCard(
                        title: 'Sale Item 2',
                        price: '£20.00',
                        oldPrice: '£30.00',
                        imageUrl:
                            'https://shop.upsu.net/cdn/shop/products/UoP_Waterbottle-1_360x.jpg?v=1614778063',
                      ),
                    ],
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