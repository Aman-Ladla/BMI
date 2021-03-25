import 'dart:math';

class Brain {
  final int height;
  final int weight;

  double _bmi;

  Brain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String suggestion() {
    if (_bmi >= 25) {
      return 'You weight is higher than normal. Exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Normal weight. Good job';
    } else {
      return 'You have weight lower than normal.';
    }
  }
}
