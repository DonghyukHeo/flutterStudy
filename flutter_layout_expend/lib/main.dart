import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expend 위젯')),
      body: Column(children: [
        Container(
          width: 150,
          height: 100,
          color: Colors.green,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
        Expanded(
          child: Container(
            width: 150,
            height: 300,
            color: Colors.green,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                ),
              ]),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 100,
          color: Colors.green,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
        Container(
          width: 150,
          height: 100,
          color: Colors.green,
          margin: const EdgeInsets.symmetric(vertical: 10),
        ),
      ]),
    );
  }
}
