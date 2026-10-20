import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const NameSparkApp());
}

class NameSparkApp extends StatelessWidget {
  const NameSparkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
