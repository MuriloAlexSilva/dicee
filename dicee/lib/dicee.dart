import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int rightButton = 1;

  int leftButton = 1;

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
                    setState(() {
                      if (leftButton < 6) {
                        leftButton++;
                      } else {
                        leftButton = 1;
                      }
                    });
                  },
                  child: Image.asset("assets/images/dice$leftButton.png"),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      if (rightButton < 6) {
                        rightButton++;
                        print(rightButton);
                      } else {
                        rightButton = 1;
                      }
                    });
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
