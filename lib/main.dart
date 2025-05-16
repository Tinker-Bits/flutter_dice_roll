import 'package:flutter/material.dart';
import 'dart:math';

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

class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  int rollNumber = 1;
  int randomDiceNumberGenerationFunction() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff0f0c29), Color(0xff24243e)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '"Let Probability Do Its Thing."',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset('assets/dice-$rollNumber.png',width: 450),
              OutlinedButton(
                onPressed:
                    () => {
                      setState(() {
                        rollNumber = randomDiceNumberGenerationFunction();
                      }),
                    },
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  'Roll',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
