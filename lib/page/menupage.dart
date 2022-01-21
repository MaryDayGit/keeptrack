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
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
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
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color(0xFFB7BAC0),
              height: 1,
            ),
            _menubutton('Home', 'images/homeimg.png'),
            _menubutton('Balance', 'images/balanceimg.png'),
            _menubutton('Cash Flow', 'images/cashflowimg.png'),
            _menubutton('Profile', 'images/profileimg.png'),
            SizedBox(
              height: 200,
            ),
            Container(
              child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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

Widget _menubutton(String butttext, String pathImg) {
  return Container(
    margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF3A66BD),
        onPrimary: Colors.white,
      ),
      onPressed: () {},
      child: Row(
        children: <Widget>[
          Image.asset(
            pathImg,
            height: 24.0,
            width: 24.0,
          ),
          // ignore: unnecessary_new
          new Container(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  butttext,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )),
        ],
      ),
    ),
  );
}
