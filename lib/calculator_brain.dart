import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double bmi;

  String getBMIResult() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(2);
  }

  String getBMIStatus() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getBMIFeedback() {
    if (bmi >= 25) {
      return 'Your BMI is higher than normal body BMI. Try to exercise more!';
    } else if (bmi >= 18.5) {
      return 'Your BMI is normal. Great job!';
    } else {
      return 'Your BMI is lower than the normal body BMI. You can eat more!';
    }
  }

  Color getTextColor() {
    if (bmi >= 25 || bmi <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return const Color(0xFF24D876);
    }
  }
}
