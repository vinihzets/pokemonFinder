import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register2_screen.dart';

class Register1Screen extends StatefulWidget {
  const Register1Screen({Key key}) : super(key: key);

  @override
  _Register1ScreenState createState() => _Register1ScreenState();
}

class _Register1ScreenState extends State<Register1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[400],
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
                      color: Colors.white,
                      fontSize: 20.0),
                ),
              ),
            ),
            const Text('First we need to know your name ...',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    color: Colors.white)),
            const SizedBox(
                width: 350.0,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                )),
            const Padding(padding: EdgeInsets.only(top: 300.0)),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Register2Screen()));
              },
              icon: const Icon(
                Icons.next_plan,
                size: 50.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
