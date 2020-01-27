import 'dart:math';

import 'package:flutter/material.dart';

import 'DiceRollerPageTwo.dart';

void main() {
  runApp(MyStateless());
}

class MyStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImageDemo',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: DiceRollerPageTwo(),
    );
  }
}
