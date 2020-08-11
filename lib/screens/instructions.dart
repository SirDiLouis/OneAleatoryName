import 'package:flutter/material.dart';

class Instructions extends StatefulWidget {

  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        centerTitle: true,
        title: Text('Instruções')
      ),
    );
  }
}