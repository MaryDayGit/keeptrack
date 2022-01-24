// ignore_for_file: unnecessary_const, unnecessary_new

//import 'dart:html';

import 'package:flutter/material.dart';
//TODO доделать валидацию авторизации

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
                padding: const EdgeInsets.all(50),
                child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'We help you to monitor your money on Ecommerce App',
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Sign Up'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: const Color(0xFF3A66BD),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF3A66BD),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const _OrComponent(),
              const SizedBox(
                height: 10,
              ),
              _createLoginButtonGoogle()
            ],
          ),
        ));
  }
}

class _OrComponent extends StatelessWidget {
  const _OrComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
            flex: 1,
            child: Divider(
              color: Color(0xFFB7BAC0),
              height: 2,
              indent: 50,
            )),
        Expanded(
            flex: 0,
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: const Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFFB7BAC0),
                  ),
                ))),
        const Expanded(
            flex: 1,
            child: Divider(
              color: Color(0xFFB7BAC0),
              height: 2,
              endIndent: 50,
            ))
      ],
    );
  }
}

Widget _createLoginButtonGoogle() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: const Color(0xFF3A66BD),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'images/google_icon.png',
            height: 48.0,
          ),
          new Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: const Text(
                "Continue with Google",
                style: TextStyle(
                  fontSize: 14,
                ),
              )),
        ],
      ),
    ),
  );
}
