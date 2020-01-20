import 'package:flutter/material.dart';

void main() {
  var myApp= MaterialApp(
    home : MyButton(),
  );
  runApp(myApp);
}

//Stateful widget
class MyButton extends StatefulWidget{
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  String defaultCount = "";

  void displayCount(){
    setState(() {
      counter++;
      defaultCount = counter.toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('isaac'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),),
            Text('hi'),
            Text("Counter clicked : "+ defaultCount,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),
            ),
            RaisedButton(child: Text('Click'),onPressed: displayCount,)
          ],
        ),
      ),
    );

  }

}












// MyStatelessWidget
/*class MyStatelessWidget extends StatelessWidget{
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.navigation),
          backgroundColor: Colors.green,
        ),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('hi'),
              Text('hello'),
              RaisedButton(child: Text('Click'),onPressed: () {},)
            ],
          ),
        ),
      ),
      color: Colors.black,

    );
  }

}

void main() {
  runApp(MyStatelessWidget());
}*/
