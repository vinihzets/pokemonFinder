import 'package:flutter/material.dart';

class Register1Screen extends StatefulWidget {
  const Register1Screen({Key? key}) : super(key: key);

  @override
  _Register1ScreenState createState() => _Register1ScreenState();
}

class _Register1ScreenState extends State<Register1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 45.0, bottom: 170.0),
            child: Center(
              child: Text(
                'Lets meet each other first?',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 20.0),
              ),
            ),
          ),
          Text('First we need to know your name ...',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0)),
          SizedBox(width: 350.0, child: TextField()),
          Padding(padding: EdgeInsets.only(top: 300.0)),
          IconButton(onPressed: () {}, icon: Icon(Icons.next_plan_outlined))
        ],
      ),
    );
  }
}
