import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/components/navigation_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                  'Home Screen',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
