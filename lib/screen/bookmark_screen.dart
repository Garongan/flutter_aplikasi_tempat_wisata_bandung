import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(29, 170, 171, 1),
              Color.fromRGBO(239, 239, 239, 1),
              Color.fromRGBO(239, 239, 239, 1),
              Color.fromRGBO(239, 239, 239, 1),
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
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
