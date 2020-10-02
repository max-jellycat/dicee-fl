import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          backgroundColor: Colors.red.shade600,
          body: DicePage()),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNumber = 1;
  int rightDieNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice-$leftDieNumber.png'),
              onPressed: () {
                setState(() {
                  leftDieNumber = Random().nextInt(6) + 1;
                });
              },
              padding: EdgeInsets.all(16.0),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice-$rightDieNumber.png'),
              onPressed: () {
                setState(() {
                  rightDieNumber = Random().nextInt(6) + 1;
                });
              },
              padding: EdgeInsets.all(16.0),
            ),
          ),
        ],
      ),
    );
  }
}
