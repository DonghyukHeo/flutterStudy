import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('위젯 좌우 스크롤하기'),
        ),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // height: double.infinity,
        // width: double.infinity,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, //가운데 정렬
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 80,
              color: Colors.red,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Container 3'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Container 3'),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Container 3'),
            ),
          ],
        ),
      ),
    );
  }
}
