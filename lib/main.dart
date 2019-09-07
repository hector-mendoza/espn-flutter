import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/map.png'),
              Text('Testing Card')
            ],
          ),
        ),
      ),
    );
  }
}
