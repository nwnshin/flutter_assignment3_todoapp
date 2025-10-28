import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.amberAccent,
    brightness: Brightness.light,
  ),
  canvasColor: Colors.grey[500],
  cardColor: Colors.white70,
  dividerColor: Colors.grey,
  highlightColor: Colors.deepOrangeAccent,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrangeAccent,
    foregroundColor: Colors.white,
    shape: CircleBorder(),
    iconSize: 24,
  ),
);
final dartTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.amberAccent,
    brightness: Brightness.dark,
  ),
  canvasColor: Colors.black54,
  cardColor: Colors.white12,
  dividerColor: Colors.white38,
  highlightColor: Colors.deepOrangeAccent,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrangeAccent,
    foregroundColor: Colors.white,
    shape: CircleBorder(),
    iconSize: 24,
  ),
);
