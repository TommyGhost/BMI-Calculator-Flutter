import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double? bmi;

  Calculator({required this.weight, required this.height});

  String getBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getLevel() {
    if (bmi! >= 25) {
      return 'OVERWEIGHT';
    } else if (bmi! > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (bmi! >= 25) {
      return 'You have a higher than normal body weight. Please exercise more.';
    } else if (bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Please eat more';
    }
  }
}
