import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register1_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [Colors.blue, Colors.yellow, Colors.red, Colors.white],
          )),
          child: Column(
            children: [
              Image.asset('images/pokemon.png'),
              const Padding(padding: EdgeInsets.only(top: 100.0)),
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Register1Screen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pinkAccent)),
                  child: const Text('Let s Go!'),
                ),
              ),
              Image.asset(
                'images/pikachu.png',
                width: 200.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
