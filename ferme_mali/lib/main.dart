import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FermeMaliApp());
}

class FermeMaliApp extends StatelessWidget {
  const FermeMaliApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ferme Mali',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const HomeScreen(),
    );
  }
}
