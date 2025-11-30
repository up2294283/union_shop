import 'package:flutter/material.dart';
import 'package:union_shop/product_date.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';
import 'package:union_shop/widgets/custom_footer.dart';
import 'package:union_shop/widgets/product_card.dart';

class CollectionDetailPage extends StatelessWidget {
  final String collectionName;

  const CollectionDetailPage({super.key, required this.collectionName});

  @override
  Widget build(BuildContext context) {
    final collectionProducts =
        products.where((p) => p.collection == collectionName).toList();

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
                          decoration:
                              const InputDecoration(labelText: 'Sort by'),
                          value: 'featured',
                          items: const [
                            DropdownMenuItem(
                                value: 'featured', child: Text('Featured')),
                            DropdownMenuItem(
                                value: 'price-asc',
                                child: Text('Price: Low to High')),
                            DropdownMenuItem(
                                value: 'price-desc',
                                child: Text('Price: High to Low')),
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
                    itemCount: collectionProducts.length,
                    itemBuilder: (context, index) {
                      final product = collectionProducts[index];
                      return ProductCard(
                        product: product,
                      );
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