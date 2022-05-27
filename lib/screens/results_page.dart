import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  String bmiLevel;
  String bmiValue;
  String bmiInterpretation;

  ResultsPage(
      {required this.bmiLevel,
      required this.bmiValue,
      required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            alignment: Alignment.bottomLeft,
            child: Column(
              children: const [
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Your Result',
                  style: kResultPageTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(15.0),
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  fText(
                    bmiLevel,
                    kLevelTextStyle,
                  ),
                  fText(
                    bmiValue,
                    kBMIValueTextStyle,
                  ),
                  fText(
                    bmiInterpretation,
                    kInterpretationTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: 'RE-CALCULATE YOUR BMI',
            tapped: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
