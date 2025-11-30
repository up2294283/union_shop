import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';

void main() {
  testWidgets('CustomAppBar does not contain GIFTS button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          appBar: CustomAppBar(),
        ),
      ),
    );

    // Verify that the 'GIFTS' button is not present.
    expect(find.text('GIFTS'), findsNothing);
  });
}
