import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/register2_screen_selection.dart';

class Register2Screen extends StatefulWidget {
  const Register2Screen({Key? key}) : super(key: key);

  @override
  _Register2ScreenState createState() => _Register2ScreenState();
}

class _Register2ScreenState extends State<Register2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [Colors.blue, Colors.yellow, Colors.red, Colors.white],
          )),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 200.0),
                  child: Text('Hello , trainer DEV!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      )),
                ),
              ),
              Text(
                '...now tell us which is your favorite pokemon type:',
                style: TextStyle(fontSize: 18.0, fontStyle: FontStyle.italic),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0, bottom: 220.0)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterSelection()));
                  },
                  icon: Icon(
                    Icons.next_plan,
                    size: 50.0,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
