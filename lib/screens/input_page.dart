import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

enum Gender {
  male,
  female,
  none,
}

int weight = 60;
int height = 180;
int age = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    tapped: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: kActiveCardColour,
                    cardChild: IconContent(
                      icon: Icons.male,
                      colour: selectedGender == Gender.male
                          ? kActiveIconColour
                          : kInactiveIconColour,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    tapped: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: kActiveCardColour,
                    cardChild: IconContent(
                      icon: Icons.female,
                      colour: selectedGender == Gender.female
                          ? kActiveIconColour
                          : kInactiveIconColour,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: fLabelTextStyle(kInactiveIconColour),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: fLabelTextStyle(kInactiveIconColour),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: const Color(0xFFE62E54),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: const Color(0x3dFFFFFF),
                      overlayColor: const Color(0x1fE62E54),
                      trackHeight: 1.5,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 18.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: fLabelTextStyle(kInactiveIconColour),
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icons.remove,
                            ),
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: fLabelTextStyle(kInactiveIconColour),
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: Icons.remove,
                            ),
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icons.add,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
              text: 'CALCULATE YOUR BMI',
              tapped: () {
                setState(() {
                  Calculator calc = Calculator(weight: weight, height: height);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultsPage(
                        bmiValue: calc.getBMI(),
                        bmiLevel: calc.getLevel(),
                        bmiInterpretation: calc.getInterpretation());
                  }));
                });
              }),
        ],
      ),
    );
  }
}
