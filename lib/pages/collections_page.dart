import 'package:flutter/material.dart';
import '../data/product_data.dart';
import 'product_page.dart';

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