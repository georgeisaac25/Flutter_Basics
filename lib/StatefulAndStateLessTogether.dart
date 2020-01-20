import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(StateLess());

class StateLess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.orange,
        ),
        title: 'Isaac',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('isaac'),
          ),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color = [Colors.orange, Colors.red, Colors.black45, Colors.blue];

  var currentColor = Colors.white;

  void doThisAfterClick() {
    var randomColor = Random().nextInt(color.length - 1);
    setState(() {
      currentColor = color[randomColor];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: currentColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(currentColor.toString()),
              RaisedButton(
                child: Text('Click'),
                onPressed: () {
                  doThisAfterClick();
                },
              ),
            ],
          ),
        ));
  }
}
