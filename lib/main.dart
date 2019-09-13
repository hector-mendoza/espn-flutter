// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'ESPN Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('¿Más Favoritos?'),
        backgroundColor: Colors.red,
      ),
      body: GridView.count(
        padding: EdgeInsets.only(
          top: 5.0,
          left: 25,
          right: 25,
        ),
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(15, (index) {
          return Center(
              child: Container(
                  margin: EdgeInsets.only(left: 4, right: 4, bottom: 5),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(20.0)),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/premier-icon.png'),
                      Text('Premier League',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                    ],
                  )
              )
          );
        }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 70,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Text(
            'Siguiente',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
