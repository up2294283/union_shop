import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/cart_service.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartService(),
      child: const UnionShopApp(),
    );
  }
}

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}