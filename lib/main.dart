import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[700],
          title: Text(
            'My MAGIC 8-ball!',
            style: TextStyle(
              fontFamily: 'YuseiMagic',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBallNumber = 1;

  void rollBall() {
    setState(() {
      magicBallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Ask any question... \nand an answer you shall receive!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'YuseiMagic',
                color: Colors.deepPurple[100],
                fontSize: 25.0,
              ),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {
                rollBall();
              },
              child: Image.asset('images/ball$magicBallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
