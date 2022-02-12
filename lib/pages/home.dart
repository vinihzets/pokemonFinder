import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/register2_screen.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  final dynamic typepokemon;
  const Home({Key key, this.typepokemon}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _onPressioned(String type) {
    setState(() {});
    typepokemon = type;
  }

  List<dynamic> list = [];

  http.Response response;

  Future<Map> _getPokes(String typepokemon) async {
    response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/type/$typepokemon'));
    final map = json.decode(response.body);

    return map;
  }

  Future<String> _getPokemonIcon(String pokeUrl) async {
    response = await http.get(Uri.parse(pokeUrl));
    final map = json.decode(response.body);
    return map['sprites']['front_default'];
  }

  Future<Map> _getPokeTypes() async {
    response = await http.get(Uri.parse(
        'https://vortigo.blob.core.windows.net/files/pokemon/data/types.json'));

    final map1 = json.decode(response.body);

    return map1;
  }

  @override
  void initState() {
    super.initState();
    typepokemon = widget.typepokemon;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokemon Finder',
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: _getPokeTypes(),
              builder: (context, snapshot) {
                if (snapshot.hasError || snapshot.data == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return _createIcon(context, snapshot);
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
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                        strokeWidth: 5.0,
                      ),
                    );
                  default:
                    if (snapshot.hasError) {
                      return Container();
                    } else {
                      return _createListPoke(context, snapshot);
                    }
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _createListPoke(BuildContext context, AsyncSnapshot snapshot) {
    final list = snapshot.data['pokemon'] as List;

    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final name = list[index]['pokemon']['name'];
          final url = list[index]['pokemon']['url'];
          return FutureBuilder<String>(
              future: _getPokemonIcon(url),
              builder: (context, snapshot) {
                return ListTile(
                  title: Text(
                    name,
                  ),
                  leading: snapshot.hasData
                      ? Image.network(snapshot.data)
                      : const CircularProgressIndicator(),
                );
              });
        });
  }

  Widget _createIcon(BuildContext context, AsyncSnapshot snapshot) {
    final list = snapshot.data['results'] as List;
    return SizedBox(
      height: 40.0,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _createIcons(context, list[index]);
          }),
    );
  }

  Widget _createIcons(BuildContext context, Map<String, dynamic> map) {
    return GestureDetector(
      child: SizedBox(
        height: 50.0,
        child: Row(
          children: [Image.network(map['thumbnailImage']), Text(map['name'])],
        ),
      ),
      onTap: () => _onPressioned(map['name']),
    );
  }
}
