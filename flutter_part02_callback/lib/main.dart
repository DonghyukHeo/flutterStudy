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
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Callback Event')),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Count : $value',
            style: const TextStyle(fontSize: 30),
          ),
        ),
        TestButton(addCounter), // VoidCallback 사용 예시
        TestDownButton(addCounter2), // 일반 인자가 있는 Function 사용 예시
      ],
    );
  }

  void addCounter() => setState(() => value++);
  void addCounter2(int downValue) => setState(() => value -= downValue);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback, {super.key});

  final VoidCallback callback; //리턴 값이 없는 callback

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      width: double.infinity,
      // InkWell or GestureDetector
      child: GestureDetector(
        onTap: () => callback.call(),
        child: Center(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Up Counter',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}

class TestDownButton extends StatelessWidget {
  const TestDownButton(this.callback, {super.key});

  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      width: double.infinity,
      // InkWell or GestureDetector
      child: GestureDetector(
        onTap: () => callback.call(1),
        onDoubleTap: () => callback.call(5),
        onLongPress: () => callback.call(10),
        child: Center(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Down Counter',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
