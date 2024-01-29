import 'package:flutter/material.dart';

final customThem = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 30),
  ),
  useMaterial3: true,
);
