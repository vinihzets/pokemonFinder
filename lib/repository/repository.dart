import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Repository extends StatefulWidget {
  const Repository({Key key}) : super(key: key);

  @override
  _RepositoryState createState() => _RepositoryState();
}

class _RepositoryState extends State<Repository> {
  http.Response response;
  Future<Map> _fetchPokemons() async {
    response = await http
        .get('https://pokeapi.co/api/v2/pokemon?offset=200&limit=200');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: _fetchPokemons(),
      builder: (context, snapshot) {},
    ));
  }
}
