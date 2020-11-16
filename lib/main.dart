import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int stateCounter = 0;

  String roll() {
    String assetText;
    int oneRandom = (Random().nextInt(6) + 1);

    if (oneRandom == 1 || stateCounter == 0) {
      assetText = 'assets/dice1.png';
    } else if (oneRandom == 2) {
      assetText = 'assets/dice2.png';
    } else if (oneRandom == 3) {
      assetText = 'assets/dice3.png';
    } else if (oneRandom == 4) {
      assetText = 'assets/dice4.png';
    } else if (oneRandom == 5) {
      assetText = 'assets/dice5.png';
    } else if (oneRandom == 6) {
      assetText = 'assets/dice6.png';
    }
    return assetText;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // appBar: AppBar(title: Text('Lab 4')),
      backgroundColor: Color(0xffE3BC9A),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            alignment: Alignment.topCenter,
            child: Text(
              'Lucky Rolling Dice',
              style: TextStyle(fontFamily: 'Lobster', fontSize: 40),
              textAlign: TextAlign.center,
            )),
        Container(child: Center(child: Image.asset(roll()))),
        Container(child: Center(child: Image.asset(roll()))),
        Container(
            child: RaisedButton(
                textColor: Colors.white,
                color: Colors.black,
                child: Text('Roll'),
                onPressed: () {
                  setState(() {
                    stateCounter += 1;
                  });
                }))
      ]),
    ));
  }
}
