import 'package:flutter/material.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    final saleItems = [
      {"name": "Hoodie", "oldPrice": 40, "newPrice": 25},
      {"name": "T-Shirt", "oldPrice": 20, "newPrice": 12},
      {"name": "Mug", "oldPrice": 10, "newPrice": 6},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Sale Items")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: saleItems.length,
        itemBuilder: (context, index) {
          final item = saleItems[index];
          return Card(
            child: ListTile(
              title: Text(item["name"].toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: [
                  Text(
                    "£${item["oldPrice"]}",
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "£${item["newPrice"]}",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}