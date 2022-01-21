import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Create on Account',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 0, 5),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Yout Name",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Your Email",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Your Password",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Sign Up Now'),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF3A66BD),
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const _TextWidgt(),
          ],
        ),
      ),
    );
  }
}

class _TextWidgt extends StatelessWidget {
  const _TextWidgt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: const Text(
              'Doesn’t have an account?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: const Text(
            'Login',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF2150AD),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
