import 'package:flutter/material.dart';
import 'package:flutter_pract1/src/screens/example_screen.dart';
import 'screens/content_switcher_screen.dart';
import 'screens/student_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ContentSwitcherScreen(),
    );
  }
}

