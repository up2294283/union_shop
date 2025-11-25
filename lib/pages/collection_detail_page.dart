import 'package:flutter/material.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';
import 'package:union_shop/widgets/custom_footer.dart';
import 'package:union_shop/widgets/product_card.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // In a real app, you would pass the collection name here.
    const collectionName = "Clothing";

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
                  Text(
                    collectionName,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Dummy Filters and Sorters
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(labelText: 'Sort by'),
                          value: 'featured',
                          items: const [
                            DropdownMenuItem(value: 'featured', child: Text('Featured')),
                            DropdownMenuItem(value: 'price-asc', child: Text('Price: Low to High')),
                            DropdownMenuItem(value: 'price-desc', child: Text('Price: High to Low')),
                          ],
                          onChanged: (value) {
                            // This dropdown does not need to be functional for this task
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton.icon(
                        onPressed: () {}, // Not functional yet
                        icon: const Icon(Icons.filter_list),
                        label: const Text('Filter'),
                      ),
                    ],
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
                      ProductCard(
                        title: 'Classic University Hoodie',
                        price: '£35.00',
                        imageUrl:
                            'https://shop.upsu.net/cdn/shop/products/UoP_Classic_Hoodie-1_360x.jpg?v=1614777893',
                      ),
                      ProductCard(
                        title: 'Classic Sweatshirt',
                        price: '£28.00',
                        imageUrl:
                            'https://shop.upsu.net/cdn/shop/products/UoP_Classic_Sweatshirt-1_360x.jpg?v=1614777921',
                      ),
                      // Add more hardcoded products for this collection
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