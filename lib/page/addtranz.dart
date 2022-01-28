// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:keeptrack/model/modeltranz.dart';
import 'package:keeptrack/page/mainpage.dart';

class AddTranz extends StatefulWidget {
  const AddTranz({Key? key}) : super(key: key);

  @override
  State<AddTranz> createState() => _AddTranzState();
}

class _AddTranzState extends State<AddTranz> {
  final _sumatranz = TextEditingController();
  final _tittletranz = TextEditingController();
  final _commenttranz = TextEditingController();
  List<String> titleTranzList = [];
  List<String> commentTranzList = [];
  List<String> sumaTranzList = [];

  ModelTranz tanz1 = ModelTranz(comment: '', title: '', suma: 0);

  SaveInfo() {
    tanz1.title = _tittletranz.text;
    tanz1.comment = _commenttranz.text;
    tanz1.suma = int.parse(_sumatranz.text);
    titleTranzList.add(tanz1.title);
    commentTranzList.add(tanz1.comment);
    sumaTranzList.add(_sumatranz.text);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MainHomePage(
            titleTranz: titleTranzList,
            commentTranz: commentTranzList,
            sumaTranz: sumaTranzList),
      ),
    );
  }

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
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                controller: _tittletranz,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: "Название",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                maxLength: 9,
                controller: _commenttranz,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: "Комментарий",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('push'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF3A66BD),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      SaveInfo();
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
