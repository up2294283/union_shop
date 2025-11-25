import 'package:flutter/material.dart';
import 'package:union_shop/widgets/custom_app_bar.dart';
import 'package:union_shop/widgets/custom_footer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

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
                    'About Us',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Welcome to the Union Shop, your one-stop destination for all official university merchandise and student essentials. Our mission is to provide high-quality, affordable products that help you show your university pride and make your student life easier.',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'From branded hoodies and t-shirts to stationery and graduation gifts, every purchase you make directly supports the Student Union and its activities, helping us to enhance the student experience for everyone.',
                    style: TextStyle(fontSize: 16, height: 1.5),
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