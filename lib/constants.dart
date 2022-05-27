import 'package:flutter/material.dart';

const kActiveCardColour = Color(0xFF1D1F33);
const kInactiveCardColour = Color(0xFF111428);
const kActiveIconColour = Color(0xFFFFFFFF);
const kInactiveIconColour = Color(0xFF8D8E98);
const kBottomButtonHeight = 80.0;
const kBottomButtonColour = Color(0xFFE62E54);

TextStyle fLabelTextStyle(Color colour) {
  return TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: colour,
  );
}

Text fText(String text, TextStyle pstyle) {
  return Text(
    text,
    style: pstyle,
    textAlign: TextAlign.center,
  );
}

const kNumberTextStyle = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.w900,
);

const kBottomButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kResultPageTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);

const kLevelTextStyle = TextStyle(
    fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xFF62CB8F));

const kBMIValueTextStyle = TextStyle(
  fontSize: 120.0,
  fontWeight: FontWeight.bold,
);

const kInterpretationTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
