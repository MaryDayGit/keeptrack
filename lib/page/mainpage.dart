import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'CashUp',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF426DC2),
                    Color(0xFF7493D0),
                    Color(0xFF7D9CDA),
                    Color(0xFF3D6DCB),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'TOTAL BALANCE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'RP.410.000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Total Shopping',
                                  // ignore: unnecessary_const
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Rp. 300.000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const VerticalDivider(
                          width: 40,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(30, 20, 10, 20),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Total Shopping',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Rp. 300.000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
