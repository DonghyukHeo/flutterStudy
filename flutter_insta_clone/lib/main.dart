import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_insta_clone/body.dart';
import 'package:google_fonts/google_fonts.dart';

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
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index; //bottomNavigation 선택 항목

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    /*
      특정 페이지에서는 appbar를 바꾸거나 다르게 표현할 경우에는
      Visibility 를 이용
    */
    return Scaffold(
      appBar: index == 0 // search 화면에서는 appbar를 표시하지 않기 위해서 삼항연산자 사용
          ? AppBar(
              title: Text(
                'Instagram',
                style:
                    GoogleFonts.lobsterTwo(color: Colors.black, fontSize: 30),
              ),
              centerTitle: false,
              actions: [
                IconButton(
                    onPressed: () {
                      print('Tab favorite');
                    },
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 32,
                    )),
                IconButton(
                    onPressed: () {
                      print('Tab paperplane');
                    },
                    icon: const Icon(
                      CupertinoIcons.paperplane,
                      size: 32,
                    )),
              ],
            )
          : null,
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => index = newIndex),
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 28,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              label: 'Search'),
        ],
      ),
    );
  }
}
