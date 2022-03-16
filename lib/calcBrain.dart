import 'dart:math';

class CalcBrain {
  CalcBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 10;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight ,try to exercice more";
    } else if (_bmi > 18.5) {
      return "You have normal body weight ,well job";
    } else {
      return "you have a lower than body weight,try to eat more";
    }
  }
}
