import 'models/product.dart';

const products = <Product>[
  Product(
    id: 'p1',
    name: 'Union Hoodie',
    description: 'Cozy hoodie with Union logo.',
    image: 'assets/images/hoodie.jpg',
    price: 39.99,
    collection: 'Clothing',
  ),
  Product(
    id: 'p2',
    name: 'Union Mug',
    description: 'Ceramic mug with branding.',
    image: 'assets/images/mug.jpg',
    price: 9.99,
    collection: 'Accessories',
  ),
  Product(
    id: 'p3',
    name: 'Union T-shirt',
    description: 'Classic t-shirt with Union logo.',
    image: 'assets/images/T_shirt.jpg',
    price: 19.99,
    collection: 'Clothing',
  ),
  Product(
    id: 'p4',
    name: 'Union Hat',
    description: 'Stylish hat with Union logo.',
    image: 'assets/images/hat.jpg',
    price: 14.99,
    collection: 'Accessories',
  ),
];
