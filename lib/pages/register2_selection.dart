import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

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
                  child: GestureDetector(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _iconWaterChange = const Icon(Icons.circle_rounded);
                          });
                        },
                        icon: _iconWaterChange),
                    onDoubleTap: () {
                      setState(() {
                        _iconWaterChange = const Icon(Icons.circle_outlined);
                      });
                    },
                  ),
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
                  child: GestureDetector(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _iconElectricChange =
                                const Icon(Icons.circle_rounded);
                          });
                        },
                        icon: _iconElectricChange),
                    onDoubleTap: () {
                      setState(() {
                        _iconElectricChange = const Icon(Icons.circle_outlined);
                      });
                    },
                  ),
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
                  child: GestureDetector(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _iconFireChange = const Icon(Icons.circle_rounded);
                          });
                        },
                        icon: _iconFireChange),
                    onDoubleTap: () {
                      setState(() {
                        _iconFireChange = const Icon(Icons.circle_outlined);
                      });
                    },
                  ),
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
                  child: GestureDetector(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _iconNormalChange =
                                const Icon(Icons.circle_rounded);
                          });
                        },
                        icon: _iconNormalChange),
                    onDoubleTap: () {
                      setState(() {
                        _iconNormalChange = const Icon(Icons.circle_outlined);
                      });
                    },
                  ),
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
