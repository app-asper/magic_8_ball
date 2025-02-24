import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('dices'),
          backgroundColor: Colors.teal,
        ), // AppBar
        body: BallPage(),
      ), // Scaffold
    ), // MaterialApp
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int Ballnumber = 1;

  void changeDiceFace() {
    setState(() {
      Ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/ball$Ballnumber.png'),
            ),
          ), // Expanded
        ], // <Widget>[]
      ), // Ro,
    );
  }
}
