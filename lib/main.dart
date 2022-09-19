import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dice"),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.black,
        body: Dicee(),
      ),
    );
  }
}

class Dicee extends StatefulWidget {
  Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  var dicenumber = Random().nextInt(5);

  void setDiceNumber() {
    setState(() {
      dicenumber = Random().nextInt(5);
    });
    debugPrint("$dicenumber");
  }

  Expanded createExpandad(int dicenumber) {
    return Expanded(
        child: TextButton(
      onPressed: setDiceNumber,
      child: Image.asset("images/$dicenumber.png"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(children: [createExpandad(dicenumber)]),
      ),
    );
  }
}
