import 'package:flutter/material.dart';

import 'my_home_page.dart';

/*
  앱 이름 변경 : android/app/src/main/AndroidMainifest.xml
  
*/

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
      home: const MyHomePage(title: '흔들기 카운트 앱'),
    );
  }
}
