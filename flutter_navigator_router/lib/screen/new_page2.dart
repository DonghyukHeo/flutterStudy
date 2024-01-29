import 'package:flutter/material.dart';
import 'package:flutter_navigator_router/main.dart';

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome new Page2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go to Back'),
            ),
            TextButton(
                onPressed: () {
                  // Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const MyApp()),
                      (route) => false);
                },
                child: const Text('Go to Home')),
          ],
        ),
      ),
    );
  }
}
