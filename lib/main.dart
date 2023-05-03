import 'package:dice_app/screens/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  MyDiceApp app = const MyDiceApp();
  runApp(app);
}

class MyDiceApp extends StatelessWidget {
  const MyDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
