import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Collections')),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        padding: const EdgeInsets.all(16),
        children: const [
          _CollectionCard("Hoodies"),
          _CollectionCard("T-Shirts"),
          _CollectionCard("Mugs"),
          _CollectionCard("Bags"),
        ],
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  final String title;

  const _CollectionCard(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(child: Text(title)),
    );
  }
}