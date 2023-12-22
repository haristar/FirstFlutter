import 'package:flutter/material.dart';
import 'dart:math';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard".toUpperCase()),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text.rich(TextSpan(text: "My", children: [
          TextSpan(
              text: "FLUTTER",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
          TextSpan(
              text: "App\n",
              style: TextStyle(fontSize: 20.0, color: Colors.blue)),
          TextSpan(
              text: "       Your Lucky Number = ${getRandom()}",
              style: TextStyle(color: Colors.pinkAccent)),
        ])),
      ),
    );
  }
}

int getRandom() {
  return Random().nextInt(100);
}
