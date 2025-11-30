class Product {
  final String id;
  final String name;
  final String description;
  final String image;
  final double price;
  final String collection;
  final List<String>? colors;
  final List<String>? sizes;
  final int? quantity;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.collection,
    this.colors,
    this.sizes,
    this.quantity,
  });
}
