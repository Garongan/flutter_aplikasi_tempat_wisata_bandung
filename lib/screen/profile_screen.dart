import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16.0),
        child: const Text(
          'Profile Screen',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
