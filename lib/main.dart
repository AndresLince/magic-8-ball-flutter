import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Magic 8 ball'),
        backgroundColor: Colors.blue[900],
      ),
      body: Magic8BallPage(),
    ),
  ));
}

class Magic8BallPage extends StatefulWidget {
  @override
  _Magic8BallPageState createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    changeBallNumber(){
      setState(() {
        ballNumber =  Random().nextInt(5) + 1;
      });
    }
    return Center(
      child: TextButton(
        onPressed: () {
          changeBallNumber();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}