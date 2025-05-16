import 'package:flutter/material.dart';

void main() {
  runApp(MatApp());
}

class MatApp extends StatelessWidget {
  const MatApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaff(),
      title: 'Dice Roll',
      debugShowCheckedModeBanner: false,
    );
  }
}

class Scaff extends StatelessWidget {
  const Scaff({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
