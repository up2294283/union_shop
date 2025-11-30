import '../models/product.dart';

final List<Product> products = [
  Product(
    id: "p1",
    name: "University Hoodie",
    image: "assets/hoodie.png",
    price: 35.0,
    description: "A warm and comfortable hoodie.",
    collection: "Clothing",
  ),
  Product(
    id: "p2",
    name: "University T-Shirt",
    image: "assets/tshirt.png",
    price: 20.0,
    description: "Soft cotton t-shirt.",
    collection: "Clothing",
  ),
  Product(
    id: "p3",
    name: "Logo Mug",
    image: "assets/mug.png",
    price: 10.0,
    description: "Ceramic mug with the Uni logo.",
    collection: "Accessories",
  ),
  Product(
    id: "p4",
    name: "Backpack",
    image: "assets/backpack.png",
    price: 30.0,
    description: "Sturdy backpack for students.",
    collection: "Accessories",
  ),
];