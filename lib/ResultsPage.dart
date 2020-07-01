import 'package:bmi_calculator/bmi_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: separationSize),
            child: Text(
              'Your result',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(separationSize),
              child: BmiCard(
                backgroundColor: activeCardBackgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'normal',
                      style: TextStyle(
                          color: Color(0xFF24D876),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '28',
                      style:
                          TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'explanation blah blah blah blah',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
