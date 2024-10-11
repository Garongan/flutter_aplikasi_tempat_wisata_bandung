import 'package:flutter/material.dart';
import 'package:flutter_aplikasi_tempat_wisata_bandung/screen/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata Bandung",
      theme: ThemeData(fontFamily: 'Inter'),
      home: const DetailScreen(),
    );
  }
}
