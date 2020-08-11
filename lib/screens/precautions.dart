import 'package:flutter/material.dart';

class Precautions extends StatefulWidget {

  @override
  _Precautions createState() => _Precautions();
}

class _Precautions extends State<Precautions> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text('Precauções')
      ),
    );
  }
}