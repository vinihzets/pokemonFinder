import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _search;

  Future<List> _getPokemons() async {
    http.Response response;

    if (_search == null) {
      response = await http.get(
          'https://vortigo.blob.core.windows.net/files/pokemon/data/pokemons.json');
    } else {
      response = await http.get(
          'https://vortigo.blob.core.windows.net/files/pokemon/data/pokemons.json');
    }

    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Finder', style: TextStyle(fontSize: 15.0)),
        centerTitle: true,
        backgroundColor: Colors.tealAccent[400],
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Column(
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
          Expanded(
            child: FutureBuilder(
                future: _getPokemons(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                    case ConnectionState.none:
                      return Container(
                        alignment: Alignment.center,
                        width: 50.0,
                        height: 70.0,
                        child: const CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.black),
                          strokeWidth: 5.0,
                        ),
                      );
                    default:
                      if (snapshot.hasError)
                        return Container();
                      else
                        return _createPokemons(context, snapshot);
                  }
                }),
          ),
        ],
      ),
    );
  }

  Widget _createPokemons(BuildContext context, AsyncSnapshot snapshot) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisSpacing: 0, crossAxisSpacing: 1.0),
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(
              child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.network(
                  snapshot.data[index]["thumbnailImage"],
                  height: 200.0,
                ),
              ),
              Text(snapshot.data[index]["thumbnailAltText"])
            ],
          ));
        });
  }
}
