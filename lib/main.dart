import 'package:flutter/material.dart';
import 'dart:math';

void main () {
runApp(const MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: DecisionApp(),
   );
 }
}

class DecisionApp extends StatelessWidget {
  const DecisionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Ask Me Anything"),
      ),
      body: const BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1; // the state: which image is showing

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;// gives 1 to 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: changeBall,
        child: Image.asset('assets/ball$ballNumber.png'),
      ),
    );
  }
}