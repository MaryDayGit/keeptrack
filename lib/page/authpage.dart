import 'dart:html';

import 'package:flutter/material.dart';

class AuthHomePage extends StatelessWidget {
  const AuthHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3A66BD),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'CashUp',
                    textScaleFactor: 1.0,
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'We help you to monitor your money on Ecommerce App',
                    textScaleFactor: 1.0,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 300),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Sign Up'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Color(0xFF3A66BD),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 300, vertical: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF3A66BD),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Container(
                child: Divider(
                  height: 2,
                  color: Color(0xFFB7BAC0),
                  indent: 300,
                  endIndent: 500,
                ),
              ),
              SizedBox(
                child: Tex,
              )

              Container(
                child: Divider(
                  height: 2,
                  color: Color(0xFFB7BAC0),
                  indent: 500,
                  endIndent: 300,
                ),
              ),

              Container(),
            ],
          ),
        ));
  }
}
