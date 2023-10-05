import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;
    var rightDiceNumber = 4;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Left button was pressed.");
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("Right button was pressed.");
              },
              child: Image.asset("images/dice$rightDiceNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
