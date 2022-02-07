import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:http/http.dart' as http;

class RegisterSelection extends StatefulWidget {
  const RegisterSelection({Key key}) : super(key: key);

  @override
  State<RegisterSelection> createState() => _RegisterSelectionState();
}

class _RegisterSelectionState extends State<RegisterSelection> {
  Icon _iconWaterChange = const Icon(Icons.circle_outlined);
  Icon _iconElectricChange = const Icon(Icons.circle_outlined);
  Icon _iconFireChange = const Icon(Icons.circle_outlined);
  Icon _iconNormalChange = const Icon(Icons.circle_outlined);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Your Favorite Type Pokemon!!',
          style: TextStyle(fontSize: 15.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'images/water.png',
                  width: 55.0,
                ),
                const Text('Water'),
                Padding(
                  padding: const EdgeInsets.only(left: 260.0),
                  child: IconButton(
                      onPressed: () async {
                        await http.get('https://pokeapi.co/api/v2/type/water');
                        setState(() {
                          _iconWaterChange = const Icon(Icons.circle_rounded);
                        });
                      },
                      icon: _iconWaterChange),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'images/electric.png',
                  width: 55.0,
                ),
                const Text('Electric'),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: IconButton(
                      onPressed: () async {
                        await http
                            .get('https://pokeapi.co/api/v2/type/electric');
                        setState(() {
                          _iconElectricChange =
                              const Icon(Icons.circle_rounded);
                        });
                      },
                      icon: _iconElectricChange),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'images/fire.png',
                  width: 55.0,
                ),
                const Text('Fire'),
                Padding(
                  padding: const EdgeInsets.only(left: 272.0),
                  child: IconButton(
                      onPressed: () async {
                        await http.get('https://pokeapi.co/api/v2/type/fire');
                        setState(() {
                          _iconFireChange = const Icon(Icons.circle_rounded);
                        });
                      },
                      icon: _iconFireChange),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'images/normal.png',
                  width: 55.0,
                ),
                const Text('Normal'),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: IconButton(
                      onPressed: () async {
                        await http.get('https://pokeapi.co/api/v2/type/normal');
                        setState(() {
                          _iconNormalChange = const Icon(Icons.circle_rounded);
                        });
                      },
                      icon: _iconNormalChange),
                )
              ],
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              child: const Text(
                'Confirm!',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red[400])),
            ),
            width: 300.0,
          ),
        ],
      ),
    );
  }
}

























// ListView(
//             children: [
//               ListTile(
//                 title: Text(
//                   'Water',
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                 ),
//                 leading: Image.network(
//                   'https://ih1.redbubble.net/image.402379416.5464/st,small,845x845-pad,1000x1000,f8f8f8.u7.jpg',
//                   width: 50.0,
//                 ),
//                 trailing: IconButton(
//                     onPressed: () {}, icon: Icon(Icons.circle_outlined)),
//               ),
//               ListTile(
//                 title: Text('Electric',
//                     style:
//                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
//                 leading: Image.network(
//                   'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0726fbdd-a6a6-4871-bed6-e8e0b9ce2af0/d60gfay-102b7c11-ba4f-4699-8928-602bf50316fc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzA3MjZmYmRkLWE2YTYtNDg3MS1iZWQ2LWU4ZTBiOWNlMmFmMFwvZDYwZ2ZheS0xMDJiN2MxMS1iYTRmLTQ2OTktODkyOC02MDJiZjUwMzE2ZmMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9o9pZJkp1g9LKEqme46BEsD4LOeRv5yB7z0Avko4SG0',
//                   width: 50.0,
//                 ),
//                 trailing: IconButton(
//                     onPressed: () {}, icon: Icon(Icons.circle_outlined)),
//               ),
//               ListTile(
//                 title: Text('Fire',
//                     style:
//                         TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
//                 leading: Image.network(
//                   'https://toppng.com/uploads/preview/69kib-375x360-fire-pokemon-fire-energy-11562907671ukkqpconnm.png',
//                   width: 50.0,
//                 ),
//                 trailing: IconButton(
//                     onPressed: () {}, icon: Icon(Icons.circle_outlined)),
//               ),
//               ListTile(
//                 title: Text(
//                   'Normal',
//                   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                 ),
//                 leading: Image.network(
//                   'https://www.vhv.rs/dpng/d/574-5745557_normal-type-pokemon-icon-hd-png-download.png',
//                   width: 50.0,
//                 ),
//                 trailing: IconButton(
//                     onPressed: () {}, icon: Icon(Icons.circle_outlined)),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Confirm'),
//                 style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all<Color>(Colors.pinkAccent)),
//               ),
//             ],
//           ),