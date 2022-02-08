import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/pokemon_info.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Map> _getPokemons() async {
    http.Response response;
    response = await http.get(
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Finder', style: TextStyle(fontSize: 15.0)),
        centerTitle: true,
        backgroundColor: Colors.red[400],
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 25.0, top: 20.0)),
              IconButton(
                onPressed: () async {
                  setState(() {});
                },
                icon: Image.asset(
                  'images/water.png',
                  width: 80.0,
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 40.0, top: 20.0)),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'images/electric.png',
                  width: 80.0,
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 40.0, top: 20.0)),
              IconButton(
                  onPressed: () async {
                    setState(() {});
                  },
                  icon: Image.asset('images/fire.png', width: 500.0)),
              const Padding(padding: EdgeInsets.only(left: 35.0, top: 50.0)),
              IconButton(
                  onPressed: () async {
                    setState(() {});
                  },
                  icon: Image.asset('images/normal.png', width: 80.0)),
            ],
          ),
          Row(
            children: const [
              Padding(padding: EdgeInsets.only(left: 20.0)),
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
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text('Pokémon'))),
            Padding(padding: EdgeInsets.only(top: 20.0), child: Text('Name')),
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Icon(Icons.arrow_upward))
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
                      if (snapshot.hasError) {
                        return Container();
                      } else {
                        return _createPokemons(context, snapshot);
                      }
                  }
                }),
          ),
        ],
      ),
    );
  }

  Widget _createPokemons(BuildContext context, AsyncSnapshot snapshot) {
    return ListView.builder(
        itemCount: 151,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ListTile(
                leading: Image.network(snapshot.data["pokemon"][index]["img"]),
                onLongPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          PokemonInfo(snapshot.data["pokemon"][index])));
                },
                title: Text(
                  snapshot.data["pokemon"][index]["name"],
                  style: const TextStyle(fontSize: 16.0),
                )),
          );
        });
  }
}
