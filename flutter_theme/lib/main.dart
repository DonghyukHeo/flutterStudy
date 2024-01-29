import 'package:flutter/material.dart';
import 'package:flutter_theme/style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customThem,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme 설정하기')),
      body: Center(
        child: Text(
          'Theme Setting',
          style: customThem.textTheme.bodyMedium,
          // style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
