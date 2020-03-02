import 'dart:math';

class CalculateBMI {
  CalculateBMI({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

    String bmiAdvivce() {
    if (_bmi >= 25) {
      return 'please loose weight';
    } else if (_bmi > 18.5) {
      return 'you are ok';
    } else {
      return 'pease gain weight ';
    }
  }
}
