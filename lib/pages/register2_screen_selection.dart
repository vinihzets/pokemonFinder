import 'package:flutter/material.dart';

class RegisterSelection extends StatelessWidget {
  const RegisterSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Your Favorite Type Pokemon!!',
          style: TextStyle(fontSize: 15.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Confirm'),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.pinkAccent)),
          ),
          ListTile(
            title: Text(
              'Water',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            leading: Image.network(
              'https://ih1.redbubble.net/image.402379416.5464/st,small,845x845-pad,1000x1000,f8f8f8.u7.jpg',
            ),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.circle_outlined)),
          ),
          ListTile(
            title: Text('Electric',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            leading: Image.network(
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0726fbdd-a6a6-4871-bed6-e8e0b9ce2af0/d60gfay-102b7c11-ba4f-4699-8928-602bf50316fc.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzA3MjZmYmRkLWE2YTYtNDg3MS1iZWQ2LWU4ZTBiOWNlMmFmMFwvZDYwZ2ZheS0xMDJiN2MxMS1iYTRmLTQ2OTktODkyOC02MDJiZjUwMzE2ZmMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.9o9pZJkp1g9LKEqme46BEsD4LOeRv5yB7z0Avko4SG0',
            ),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.circle_outlined)),
          ),
          ListTile(
            title: Text('Fire',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            leading: Image.network(
              'https://toppng.com/uploads/preview/69kib-375x360-fire-pokemon-fire-energy-11562907671ukkqpconnm.png',
            ),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.circle_outlined)),
          ),
          ListTile(
            title: Text(
              'Normal',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            leading: Image.network(
              'https://www.vhv.rs/dpng/d/574-5745557_normal-type-pokemon-icon-hd-png-download.png',
            ),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.circle_outlined)),
          ),
        ],
      ),
    );
  }
}
