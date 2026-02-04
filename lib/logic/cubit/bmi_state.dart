import 'package:bmicalculator/bmi_screen.dart';

sealed class BmiState {
  final double height;
  final int weight;
  final int age;
  final Gender gender;
  final double bmi;
  final int level;

  const BmiState({
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
    required this.bmi,
    required this.level,
  });
}

class BmiInitial extends BmiState {
  const BmiInitial()
      : super(
          height: 120,
          weight: 30,
          age: 10,
          gender: Gender.male,
          bmi: 0.0,
          level: 0,
        );
}

class BmiUpdated extends BmiState {
  const BmiUpdated({
    required double height,
    required int weight,
    required int age,
    required Gender gender,
    required double bmi,
    required int level,
  }) : super(
          height: height,
          weight: weight,
          age: age,
          gender: gender,
          bmi: bmi,
          level: level,
        );
}
