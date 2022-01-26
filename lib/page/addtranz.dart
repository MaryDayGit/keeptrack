import 'package:flutter/material.dart';

class AddTranz extends StatelessWidget {
  AddTranz({Key? key}) : super(key: key);
  final _sumatranz = TextEditingController();

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
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                maxLength: 9,
                controller: _sumatranz,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: "Сумма",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
