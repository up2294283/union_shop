import 'package:flutter/material.dart';
import 'pages/about_us_page.dart';
import 'pages/cart_page.dart';
import 'pages/sale_page.dart';
import 'login_page.dart';
import 'pages/collections_page.dart';
import 'pages/home_page.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 600;

    return AppBar(
      title: const Text("Union Shop"),

      // MOBILE → Hamburger menu
      actions: isDesktop
          ? _buildDesktopLinks(context)
          : [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CartPage()),
                  );
                },
              ),
            ],

      automaticallyImplyLeading: !isDesktop,

      // drawer only on mobile
      bottom: isDesktop
          ? null
          : PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(),
            ),
    );
  }

  // Desktop links
  List<Widget> _buildDesktopLinks(BuildContext context) {
    return [
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const HomePage()));
        },
        child: const Text("Home", style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const CollectionsPage()));
        },
        child: const Text("Collections", style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const SalePage()));
        },
        child: const Text("Sale", style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const AboutUsPage()));
        },
        child: const Text("About", style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const LoginPage()));
        },
        child: const Text("Login", style: TextStyle(color: Colors.white)),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const CartPage()));
        },
        child: const Text("Cart", style: TextStyle(color: Colors.white)),
      ),
    ];
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}