import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcom to New Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                onPressed: () => context.pop(),
                child: const Text('Go to Home')),
            TextButton(
                onPressed: () => context.pushNamed('new2'),
                child: const Text('Go to New Page2')),
          ],
        ),
      ),
    );
  }
}
