import 'package:flutter/material.dart';

class RegisterSelection extends StatefulWidget {
  const RegisterSelection({Key? key}) : super(key: key);

  @override
  State<RegisterSelection> createState() => _RegisterSelectionState();
}

class _RegisterSelectionState extends State<RegisterSelection> {
  // String _search;

  // Future<Map> _getSearch() async {
  //   http.Response response;
  //   if (_search == null) {
  //     response = await http.get('https://pokeapi.co/api/v2/pokemon');
  //   } else {
  //     response = await http.get('https://pokeapi.co/api/v2/type=$_search');
  //   }
  //   ;
  // }

  @override
  Widget build(BuildContext context) {
    Color _iconColor = Colors.black;

    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Select Your Favorite Type Pokemon!!',
            style: TextStyle(fontSize: 15.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [Colors.blue, Colors.yellow, Colors.red, Colors.black54],
        )),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Pok%C3%A9mon_Water_Type_Icon.svg/1024px-Pok%C3%A9mon_Water_Type_Icon.svg.png',
                    width: 55.0,
                  ),
                  Text('Water'),
                  Padding(
                    padding: EdgeInsets.only(left: 260.0),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.circle_outlined)),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Image.network(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0726fbdd-a6a6-4871-bed6-e8e0b9ce2af0/d60gfay-102b7c11-ba4f-4699-8928-602bf50316fc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzA3MjZmYmRkLWE2YTYtNDg3MS1iZWQ2LWU4ZTBiOWNlMmFmMFwvZDYwZ2ZheS0xMDJiN2MxMS1iYTRmLTQ2OTktODkyOC02MDJiZjUwMzE2ZmMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9o9pZJkp1g9LKEqme46BEsD4LOeRv5yB7z0Avko4SG0',
                    width: 55.0,
                  ),
                  Text('Electric'),
                  Padding(
                    padding: EdgeInsets.only(left: 250.0),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.circle_outlined)),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Pok%C3%A9mon_Fire_Type_Icon.svg/2048px-Pok%C3%A9mon_Fire_Type_Icon.svg.png',
                    width: 55.0,
                  ),
                  Text('Fire'),
                  Padding(
                    padding: EdgeInsets.only(left: 272.0),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.circle_outlined)),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Pok%C3%A9mon_Dragon_Type_Icon.svg/512px-Pok%C3%A9mon_Dragon_Type_Icon.svg.png',
                    width: 55.0,
                  ),
                  Text('Normal'),
                  Padding(
                    padding: const EdgeInsets.only(left: 250.0),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _iconColor = Colors.yellow;
                          });
                        },
                        icon: Icon(
                          Icons.circle_outlined,
                          color: _iconColor,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Confirm!',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pinkAccent)),
              ),
              width: 300.0,
            )
          ],
        ),
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