import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register2_screen.dart';

class Register1Screen extends StatefulWidget {
  const Register1Screen({Key key}) : super(key: key);

  @override
  _Register1ScreenState createState() => _Register1ScreenState();
}

class _Register1ScreenState extends State<Register1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 45.0, bottom: 170.0),
              child: Center(
                child: Text(
                  'Lets meet each other first?',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            ),
            const Text('Now trainer, tell us your name ...',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.black)),
            const SizedBox(
                width: 350.0,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 200.0),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Register2Screen()));
              },
              icon: const Icon(
                Icons.next_plan,
                size: 50.0,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
