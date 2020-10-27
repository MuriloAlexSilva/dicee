import 'dart:math';

import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int rightButton = 1;
  int leftButton = 1;

  void changeDice() {
    setState(() {
      leftButton = Random().nextInt(6) + 1;
      rightButton = Random().nextInt(6) + 1;
      /*Para utilizar esta função deverá conter o dart: math
        colocando o random().nextInt() ele ira inserir valores aleatorios até 
        o numero inserido dentro de nextInt "significa proximo inteiro", porém 
        ele considera o zero, indo assim neste caso acima de 0 até 5, que daria 6 numeros,
        sendo assim colocamos o "+1", para quando der zero ele ficar 1 e assim sempre irá
        somar 1
        */
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dicee"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset("assets/images/dice$leftButton.png"),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset("assets/images/dice$rightButton.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
