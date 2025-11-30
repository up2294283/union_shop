import 'package:flutter/material.dart';
import '../product_data.dart';
import 'product_page.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = products.map((p) => p.collection).toSet().toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Collections')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final name = categories[index];
          return ListTile(
            title: Text(name),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CollectionPage(collectionName: name),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CollectionPage extends StatelessWidget {
  final String collectionName;

  const CollectionPage({super.key, required this.collectionName});

  @override
  Widget build(BuildContext context) {
    final collectionProducts = products
        .where((p) => p.collection == collectionName)
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(collectionName)),
      body: ListView.builder(
        itemCount: collectionProducts.length,
        itemBuilder: (context, index) {
          final item = collectionProducts[index];

          return ListTile(
            leading: Image.asset(item.image, width: 60),
            title: Text(item.name),
            subtitle: Text("£${item.price}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductPage(product: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}