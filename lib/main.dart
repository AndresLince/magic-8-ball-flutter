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
  _Magic8BallPageStage createState() => _Magic8BallPageStage();
}

class _Magic8BallPageStage extends State<Magic8BallPage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: null,
        child: Image.asset('images/ball1.png'),
      ),
    );
  }
}