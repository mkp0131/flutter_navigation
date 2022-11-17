import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen/home_screen.dart';
import 'package:flutter_navigation/screen/one_screen.dart';
import 'package:flutter_navigation/screen/three_screen.dart';
import 'package:flutter_navigation/screen/two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 앱이 처음 실행될 라우트
      routes: {
        // 라우트 리스트
        '/': (context) => HomeScreen(),
        '/one': (context) => OneScreen(),
        '/two': (context) => TowScreen(),
        '/three': (context) => ThreeScreen(),
      },
    );
  }
}
