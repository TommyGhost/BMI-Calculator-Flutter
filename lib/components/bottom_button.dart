import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function() tapped;

  BottomButton({required this.text, required this.tapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: tapped,
        child: Center(
          child: Text(
            text,
            style: kBottomButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      height: kBottomButtonHeight,
      color: kBottomButtonColour,
    );
  }
}
