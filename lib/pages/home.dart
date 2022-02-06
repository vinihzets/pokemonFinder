import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _search;

  Future<Map> _getSearch() async {
    http.Response response;
    if (_search == null) {
      response = await http.get('https://pokeapi.co/api/v2/pokemon');
    } else {
      response = await http.get('https://pokeapi.co/api/v2/type=$_search');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon Finder', style: TextStyle(fontSize: 15.0)),
        centerTitle: true,
        backgroundColor: Colors.tealAccent[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30.0, top: 20.0)),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Pok%C3%A9mon_Water_Type_Icon.svg/1024px-Pok%C3%A9mon_Water_Type_Icon.svg.png',
                  width: 70.0,
                ),
                Padding(padding: EdgeInsets.only(left: 20.0, top: 20.0)),
                Image.network(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0726fbdd-a6a6-4871-bed6-e8e0b9ce2af0/d60gfay-102b7c11-ba4f-4699-8928-602bf50316fc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzA3MjZmYmRkLWE2YTYtNDg3MS1iZWQ2LWU4ZTBiOWNlMmFmMFwvZDYwZ2ZheS0xMDJiN2MxMS1iYTRmLTQ2OTktODkyOC02MDJiZjUwMzE2ZmMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9o9pZJkp1g9LKEqme46BEsD4LOeRv5yB7z0Avko4SG0',
                  width: 70.0,
                ),
                Padding(padding: EdgeInsets.only(left: 20.0, top: 20.0)),
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Pok%C3%A9mon_Fire_Type_Icon.svg/2048px-Pok%C3%A9mon_Fire_Type_Icon.svg.png',
                    width: 70.0),
                Padding(padding: EdgeInsets.only(left: 20.0, top: 100.0)),
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Pok%C3%A9mon_Dragon_Type_Icon.svg/512px-Pok%C3%A9mon_Dragon_Type_Icon.svg.png',
                    width: 70.0),
              ],
            ),
            Row(
              children: [
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
            Row(children: [
              Text('data'),
              Text('data'),
              Icon(Icons.arrow_upward)
            ])
          ],
        ),
      ),
    );
  }
}
