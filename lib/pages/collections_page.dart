import 'package:flutter/material.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';
import 'package:union_shop/widgets/custom_footer.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Collections',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  _CollectionCard(
                    title: 'Clothing',
                    imageUrl: 'https://shop.upsu.net/cdn/shop/collections/UoP_Classic_Hoodie-2_360x.jpg?v=1614777893',
                  ),
                  SizedBox(height: 16),
                  _CollectionCard(
                    title: 'Gifts & Souvenirs',
                    imageUrl: 'https://shop.upsu.net/cdn/shop/collections/UoP_Coasters-1_360x.jpg?v=1614778005',
                  ),
                ],
              ),
            ),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const _CollectionCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/collection-detail'),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.network(imageUrl, fit: BoxFit.cover, height: 200, width: double.infinity),
            ListTile(
              title: Text(title),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}