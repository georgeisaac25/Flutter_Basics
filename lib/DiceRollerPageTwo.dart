import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollerPageTwo extends StatefulWidget {
  @override
  _DiceRollerPageTwoState createState() => _DiceRollerPageTwoState();
}

class _DiceRollerPageTwoState extends State<DiceRollerPageTwo> {
  AssetImage image1 = AssetImage("images/one.png");
  AssetImage image2 = AssetImage("images/two.png");
  AssetImage image3 = AssetImage("images/three.png");
  AssetImage image4 = AssetImage("images/four.png");
  AssetImage image5 = AssetImage("images/five.png");
  AssetImage image6 = AssetImage("images/six.png");

  AssetImage current;

  //invoked for first time when app launches
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      current = image1;
    });
  }

  void roll() {
    var num = (1 + Random().nextInt(6));

    setState(() {
      switch (num) {
        case 1:
          {
            current = image1;
            break;
          }
        case 2:
          {
            current = image2;
            break;
          }
        case 3:
          {
            current = image3;
            break;
          }
        case 4:
          {
            current = image4;
            break;
          }
        case 5:
          {
            current = image5;
            break;
          }
        case 6:
          {
            current = image6;
            break;
          }
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RollDIce'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: current,
                  width: 200,
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: RaisedButton(
                    child: Text('Roll it!'),
                    textColor: Colors.white,
                    color: Colors.black54,
                    onPressed: roll,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
