import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16.0),
        child: const Text(
          'Bookmark Screen',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
