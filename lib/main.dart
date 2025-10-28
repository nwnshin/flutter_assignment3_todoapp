import 'package:flutter/material.dart';
import 'package:flutter_assignment3_todoapp/home_page.dart';
import 'package:flutter_assignment3_todoapp/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: dartTheme,
      home: HomePage(title: "혜원`s Tasks"),
    );
  }
}
