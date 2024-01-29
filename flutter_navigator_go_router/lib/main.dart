import 'package:flutter/material.dart';
import 'package:flutter_navigator_go_router/screen/new_page.dart';
import 'package:flutter_navigator_go_router/screen/new_page2.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: '/',
              name: 'Home',
              builder: (context, _) => const HomePage()),
          GoRoute(
              path: '/new1',
              name: 'new1',
              builder: (context, _) => const NewPage()),
          GoRoute(
              path: '/new2',
              name: 'new2',
              builder: (context, _) => const NewPage2()),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('go_router 외부객체로 페이지 이동하기'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed('new1');
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) {
            //     return const NewPage();
            //   }),
            // );
          },
          child: const Text('Go to New Page'),
        ),
      ),
    );
  }
}
