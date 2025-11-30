import 'package:flutter/material.dart';
import 'package:union_shop/pages/collection_detail_page.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Welcome to the Union Shop!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

          const SizedBox(height: 20),

          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(child: Text("Banner / Hero Image Placeholder")),
          ),

          const SizedBox(height: 20),

          const Text('Featured Collections',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _collectionCard(context, 'Clothing'),
              _collectionCard(context, 'Accessories'),
            ],
          ),

          const SizedBox(height: 30),

          const Center(child: Text("© 2025 Union Shop - Dummy Footer")),
        ],
      ),
    );
  }

  Widget _collectionCard(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => CollectionDetailPage(collectionName: title)),
        );
      },
      child: Container(
        width: 150,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(title, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}

