import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcom to New Page2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => context.goNamed('Home'),
              child: const Text('Go to Home'),
            ),
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Go to New Page'),
            ),
          ],
        ),
      ),
    );
  }
}
