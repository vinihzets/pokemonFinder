import 'package:flutter/material.dart';

class PokemonInfo extends StatelessWidget {
  final Map<String, dynamic> _pokemonInfo;
  const PokemonInfo(this._pokemonInfo, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pokemonInfo["name"]),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              _pokemonInfo["img"],
            ),
            Text(_pokemonInfo["name"], style: TextStyle(fontSize: 25.0)),
            Text(_pokemonInfo["height"]),
            Text(_pokemonInfo["weight"])
          ],
        ),
      ),
    );
  }
}
