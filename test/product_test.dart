// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:union_shop/pages/about_us_page.dart';
// import 'package:union_shop/main.dart';
// import 'package:union_shop/pages/collection_detail_page.dart';
// import 'package:union_shop/pages/collections_page.dart';
// import 'package:union_shop/pages/product_page.dart';

// void main() {
//   group('Product Page Tests', () {
//     Widget createTestWidget() {
//       return MaterialApp(
//         initialRoute: '/product',
//         routes: {
//           '/': (context) => const HomeScreen(),
//           '/product': (context) => const ProductPage(),
//           '/collections': (context) => const CollectionsPage(),
//           '/about': (context) => const AboutUsPage(),
//           '/collection-detail': (context) => const CollectionDetailPage(),
//         },
//       );
//     }

//     testWidgets('should display product page with basic elements', (
//       tester,
//     ) async {
//       await tester.pumpWidget(createTestWidget());
//       await tester.pump();

//       // Check that basic UI elements are present
//       expect(
//         find.text('FREE UK DELIVERY ON ORDERS OVER £50'),
//         findsOneWidget,
//       );
//       expect(find.text('Placeholder Product Name'), findsOneWidget);
//       expect(find.text('£15.00'), findsOneWidget);
//       expect(find.text('Description'), findsOneWidget);
//     });

//     testWidgets('should display header icons', (tester) async {
//       await tester.pumpWidget(createTestWidget());
//       await tester.pump();

//       // Check that header icons are present
//       expect(find.byIcon(Icons.search), findsOneWidget);
//       expect(find.byIcon(Icons.person_outline), findsOneWidget);
//       expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
//       expect(find.byIcon(Icons.menu), findsOneWidget);
//     });

//     testWidgets('should display footer', (tester) async {.
//       await tester.pumpWidget(createTestWidget());
//       await tester.pump();

//       // Check that footer is present
//       expect(find.text('© 2024, Union Shop'), findsOneWidget);
//       expect(find.text('About Us'), findsOneWidget);
//     });
//   });
// }
