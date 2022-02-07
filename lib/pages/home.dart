import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Finder', style: TextStyle(fontSize: 15.0)),
        centerTitle: true,
        backgroundColor: Colors.tealAccent[400],
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30.0, top: 20.0)),
                Image.asset(
                  'images/water.png',
                  width: 70.0,
                ),
                const Padding(padding: EdgeInsets.only(left: 20.0, top: 20.0)),
                Image.asset(
                  'images/electric.png',
                  width: 70.0,
                ),
                const Padding(padding: EdgeInsets.only(left: 20.0, top: 20.0)),
                Image.asset('images/fire.png', width: 70.0),
                const Padding(padding: EdgeInsets.only(left: 20.0, top: 100.0)),
                Image.asset('images/normal.png', width: 70.0),
              ],
            ),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 35.0)),
                Text('Water', style: TextStyle(fontSize: 20.0)),
                Padding(
                    padding: EdgeInsets.only(
                  left: 30.0,
                )),
                Text(
                  'Electric',
                  style: TextStyle(fontSize: 20.0),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  left: 40.0,
                )),
                Text(
                  'Fire',
                  style: TextStyle(fontSize: 20.0),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  left: 40.0,
                )),
                Text(
                  'Normal',
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
            Row(children: const [
              Padding(padding: EdgeInsets.only(top: 100.0)),
              Expanded(child: Text('Pokémon')),
              Text('Name'),
              Icon(Icons.arrow_upward)
            ]),
          ],
        ),
      ),
    );
  }
}
