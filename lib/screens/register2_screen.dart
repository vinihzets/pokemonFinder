import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register2_selection.dart';

class Register2Screen extends StatefulWidget {
  const Register2Screen({Key key}) : super(key: key);

  @override
  _Register2ScreenState createState() => _Register2ScreenState();
}

class _Register2ScreenState extends State<Register2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[400],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/elements.png',
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 200.0),
                child: Text('Hello , trainer DEV!',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black)),
              ),
            ),
            const Text(
              '...now tell us which is your favorite pokemon type:',
              style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0, bottom: 200.0)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterSelection()));
                },
                icon: const Icon(
                  Icons.next_plan,
                  size: 50.0,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
