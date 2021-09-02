import 'dart:math';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Ask Me Anythig',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print('Ball Button $ballNumber is pressed');
              });
            },
            child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
