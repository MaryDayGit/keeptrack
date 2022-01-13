import 'package:flutter/material.dart';
import 'package:keeptrack/page/authpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //theme: ThemeData(backgroundColor: const Color(0xFF3A66BD)),
      home: AuthHomePage(),
    );
  }
}
