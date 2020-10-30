import 'package:flutter/material.dart';
import 'dart:math';

class calcutorBrain {
  calcutorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String BMIcalc() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'overWieght';
    else if (_bmi > 18.5)
      return 'Normal';
    else {
      return 'underWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You are the heigher than the normal. Try to excersice more.';
    else if (_bmi > 18.5)
      return 'You have a normal body. Good job!';
    else {
      return 'You have a lowe than normal body weight. You can eat a bit more.';
    }
  }
}
