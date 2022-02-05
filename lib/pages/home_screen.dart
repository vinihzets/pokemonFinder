import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register1_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://imagensemoldes.com.br/wp-content/uploads/2020/04/Pok%C3%A9mon-Com-Fundo-Transparente.png'),
            Padding(padding: EdgeInsets.only(top: 100.0)),
            SizedBox(
              width: 250.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Register1Screen()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pinkAccent)),
                child: Text('Let s Go!'),
              ),
            ),
            Image.network(
              'https://static.wikia.nocookie.net/anicrossbr/images/3/36/Pikachu_render_by_hikarichan95-d4jr57z.png/revision/latest/scale-to-width-down/382?cb=20160303003536&path-prefix=pt-br',
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
