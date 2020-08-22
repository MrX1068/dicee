import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceRoll(),
      ),
    ),
  );
}

class DiceRoll extends StatefulWidget {
  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 2;
  String leftValue = "two";
  String rightValue = " two";
  void getDiceNum() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      leftValue = ("you got $leftDiceNumber point for leftdice");
      print(leftValue);
      rightDiceNumber = Random().nextInt(6) + 1;
      rightValue = ("you got $rightDiceNumber point for rightdice");
      print(rightValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                getDiceNum();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                getDiceNum();
              },
            ),
          ),
        ],
      ),
    );
  }
}
