import 'dart:math';

class CalcBrain {
  int _height = 170, _weight = 60;
  double _bmi;
  CalcBrain(this._height, this._weight) {
    _bmi = _weight / pow(_height / 100, 2);
  }

  String calcBmi() => _bmi.toStringAsFixed(1);

  String getResult() {
    if (_bmi >= (25))
      return 'Overweight';
    else if (_bmi > (18.5))
      return 'Normal';
    else
      return 'Underweight';
  }

  String getAdvice() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exetcise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
