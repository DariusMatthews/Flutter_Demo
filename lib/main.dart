import 'package:flutter/material.dart';

// initialize MyApp
void main() => runApp(MyApp());

//Create MyApp class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Practice"),
        ),
        body: Center(
          child: Text('Hey it worked!'),
        ),
      ),
    );
  }
}