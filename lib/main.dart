import 'package:blank_name/theme/theme.dart';
import 'package:flutter/material.dart';
import 'screens/landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ligthMode,
      home: LandingPage(),
    );
  }
}