import 'package:flutter/material.dart';
import './core/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping with Rach',
      theme: ThemeData(),
      // darkTheme: ThemeData.dark(),
      
      home:const HomePage(title: "Bienvenue",),
    );
  }
}
