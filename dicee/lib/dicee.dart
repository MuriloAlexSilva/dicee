import 'package:flutter/material.dart';

class Dicee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Expanded(flex: 1, child: Image.asset("assets/images/dice1.png")),
        Expanded(flex: 1, child: Image.asset("assets/images/dice2.png")),
      ],
    ));
  }
}
