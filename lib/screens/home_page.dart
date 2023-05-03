import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int getRandomNumber() {
    int diceValue = Random().nextInt(6);
    return diceValue + 1;
  }

  int diceValueLeft = Random().nextInt(6) + 1;
  int diceValueRigth = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 111, 89, 192),
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'DiceApp',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            elevation: 10,
            backgroundColor: const Color.fromARGB(255, 111, 89, 192),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        diceValueLeft = getRandomNumber();
                      });
                    },
                    child: Image.asset(
                      'assets/images/dice$diceValueLeft.png',
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        diceValueRigth = getRandomNumber();
                      });
                    },
                    child: Image.asset(
                      'assets/images/dice$diceValueRigth.png',
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
