import 'dart:math';

import 'package:calculator/home.dart';

class calculator {
  calculator({required this.Height, required this.Weight});
  final Height;
  final Weight;
  double bmi = 0;

  String calculatrBMI() {
    if (scale == false) {
      bmi = Weight / pow(Height / 100, 2);
      return bmi.toStringAsFixed(1);
    } else {
      bmi = (Weight * 2.2 / pow(Height, 2)) * 703;
      return bmi.toStringAsFixed(1);
    }
  }

  String getresult() {
    if (bmi < 18) {
      return ("under weight");
    } else if (bmi >= 18 && bmi <= 24.5) {
      return ("Normal");
    } else if (bmi >= 25 && bmi <= 29.9) {
      return ("overweight");
    } else {
      return ("Obese");
    }
  }

  String getinterpretation() {
    if (bmi < 18) {
      return ("Please consider consulting a healthcare professional for guidance on achieving a healthier weight.");
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return ("Congratulations! , you are  considered a normal, healthy weight range for adults. Keep up the good work!");
    } else if (bmi >= 25 && bmi <= 29.9) {
      return ("you are overweight. It's a good idea to speak with a healthcare provider to discuss weight management strategies.");
    } else {
      return ("It's essential to seek medical advice and consider weight loss options to improve your health and well-being.");
    }
  }
}
