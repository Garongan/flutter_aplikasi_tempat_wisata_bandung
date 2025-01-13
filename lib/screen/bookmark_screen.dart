import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
        child: const SafeArea(
          child: Text(
            'Bookmark Screen',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
