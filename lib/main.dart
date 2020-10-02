import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('images/dice-1.png'),
            ),
            Expanded(
              child: Image.asset('images/dice-2.png'),
            ),
          ],
        ),
      ),
    );
  }
}
