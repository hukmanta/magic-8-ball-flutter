import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        title: 'Ask Me Anything',
        home: MagicBall(),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            randomAnswer();
          },
          child: Container(
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }

  void randomAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
