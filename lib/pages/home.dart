import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  final dynamic typepokemon;
  Home({Key key, this.typepokemon}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

String typepokemon;

List pokemons = [];

class _HomeState extends State<Home> {
  http.Response response;

  Future<Map> _getPokes(String typepokemon) async {
    response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/type/$typepokemon'));
    final map = json.decode(response.body);

    return map;
  }

  Future<String> _getPokemonIcons(String resp) async {
    response = await http.get(Uri.parse(resp));
    final map = json.decode(response.body);
    return map['sprites']['front_default'];
  }

  Future<Map> _getPokeTypes() async {
    response = await http.get(Uri.parse(
        'https://vortigo.blob.core.windows.net/files/pokemon/data/types.json'));

    final map1 = json.decode(response.body);

    return map1;
  }

  void initState() {
    super.initState();
    typepokemon = widget.typepokemon;
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
          FutureBuilder(
              future: _getPokeTypes(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  default:
                    if (snapshot.hasError) {
                      return Container();
                    } else {
                      return _createIcons(context, snapshot);
                    }
                }
              }),
          Row(children: const [
            Expanded(child: Text('Pokémon')),
            Text('Name'),
            Icon(Icons.arrow_upward)
          ]),
          Expanded(
            child: FutureBuilder(
                future: _getPokes(typepokemon),
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
                        return _createPokeName(context, snapshot);
                      }
                  }
                }),
          ),
        ],
      ),
    );
  }

  Widget _createPokeName(BuildContext context, AsyncSnapshot snapshot) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ListTile(
                leading: Image.network(snapshot.data["pokemon"][index]["img"]),
                // onLongPress: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) =>
                //           PokemonInfo(snapshot.data["pokemon"][index])));

                title: Text(
                  snapshot.data["pokemon"][index]["name"],
                  style: const TextStyle(fontSize: 16.0),
                )),
          );
        });
  }

  Widget _createIcons(BuildContext context, AsyncSnapshot snapshot) {
    final list = snapshot.data['results'] as List;
    return SizedBox(
      height: 40.0,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _creatIcon(context, list[index]);
          }),
    );
  }

  Widget _creatIcon(BuildContext context, Map<String, dynamic> map) {
    return GestureDetector(
      child: SizedBox(
        height: 50.0,
        child: Row(
          children: [Image.network(map['thumbnailImage']), Text(map['name'])],
        ),
      ),
    );
  }
}
