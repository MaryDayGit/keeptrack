import 'package:flutter/material.dart';
import 'package:keeptrack/page/authpage.dart';
import 'package:keeptrack/page/mainpage.dart';
import 'package:keeptrack/page/menupage.dart';
import 'package:keeptrack/page/register.dart';
import 'package:keeptrack/page/signpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const AuthHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/signup': (context) => const SignUp(),
        "/register": (context) => const RegisterPage(),
        "/menupage": (context) => const MenuWidgetPage(),
        "/mainpage": (context) => const MainHomePage(),
      },

      //theme: ThemeData(backgroundColor: const Color(0xFF3A66BD)),
      //home: AuthHomePage(),
    );
  }
}
