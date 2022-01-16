// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class MenuWidgetPage extends StatelessWidget {
  const MenuWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A66BD),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'CashUp',
                  textScaleFactor: 1.0,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Track your shopping activities',
                  textScaleFactor: 1.0,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Divider(
                color: Color(0xFFB7BAC0),
                height: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Home'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF3A66BD),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
