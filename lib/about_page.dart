import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          """
This is the Union Shop application for students.
We sell clothing, accessories, merchandise and more.

This page contains static content only.
          """,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}