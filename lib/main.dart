import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me'),
          ),
          backgroundColor: Colors.deepPurple.shade600,
        ),
        body: AskMe(),
      ),
    ),
  );
}

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int randomBallNum = 1;
  void randomNumFun() {
    setState(() {
      randomBallNum = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: (() {
            randomNumFun();
          }),
          child: Image(
            image: AssetImage('images/ball$randomBallNum.png'),
          ),
        ),
      ),
    );
  }
}
