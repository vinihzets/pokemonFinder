import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:http/http.dart' as http;

class Register2Screen extends StatefulWidget {
  const Register2Screen({
    Key key,
  }) : super(key: key);

  @override
  _Register2ScreenState createState() => _Register2ScreenState();
}

String typepokemon;

class _Register2ScreenState extends State<Register2Screen> {
  http.Response response;
  Future<Map> _getTypes() async {
    response = await http.get(Uri.parse(
        'https://vortigo.blob.core.windows.net/files/pokemon/data/types.json'));

    final jsonMap = json.decode(response.body);
    return jsonMap;
  }

  void _onPressedIcon() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FutureBuilder(
            future: _getTypes(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return const Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError) {
                    return Container();
                  } else {
                    return _createIcon(context, snapshot);
                  }
              }
            });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 200.0),
              child: Text('Hello , trainer DEV!',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black)),
            ),
          ),
          const Text(
            '...now tell us which is your favorite pokemon type:',
            style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          IconButton(
              onPressed: _onPressedIcon,
              icon: const Icon(Icons.arrow_right_alt_outlined)),
          const Padding(padding: EdgeInsets.only(top: 20.0, bottom: 200.0)),
        ],
      ),
    );
  }

  Widget _createIcon(BuildContext context, AsyncSnapshot snapshot) {
    final list = snapshot.data['results'] as List;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return _createIcons(context, list[index]);
        });
  }

  Widget _createIcons(BuildContext context, Map<String, dynamic> map) {
    return GestureDetector(
      child: Row(
        children: [
          Image.network(
            map['thumbnailImage'],
            width: 60.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Text(map['name'], style: const TextStyle(fontSize: 20.0)),
          )
        ],
      ),
      onTap: () {
        typepokemon = map['name'];
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Home(typepokemon: typepokemon)));
      },
    );
  }
}
