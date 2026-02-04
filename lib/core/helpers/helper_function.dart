import 'dart:math';

double calculateBmi({required double height, required int weight}) {
  return (weight / pow((height / 100), 2));
}

int getBmiLevel(double bmi,) {
  if (bmi < 18.5) {
    return 0;
  } else if (bmi >= 18.5 && bmi < 24.9) {
    return 1;
  } else if (bmi >= 25 && bmi < 29.9) {
    return 2;
  } else {
    return 3;
  }
}