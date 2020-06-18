import 'package:flutter/material.dart';
import '../components//Constants.dart';
import '../components//UsedCard.dart';
import '../components//GreatButton.dart';

class Result extends StatelessWidget {
  Result(this.result, this.bmi, this.advice);

  final String result;
  final String bmi;
  final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height / 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: UsedCard(
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    result,
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 25,
                    ),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 6,
                    ),
                  ),
                  Text(
                    advice,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              colored: kActiveCardColor,
            ),
          ),
          GreatButton(
              text: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
//454
