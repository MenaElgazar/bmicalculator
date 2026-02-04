

import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/helpers/helper_function.dart';
import 'package:bmicalculator/logic/cubit/bmi_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(const BmiInitial());

  
  void updateAndCalc({double? height, int? weight, int? age, Gender? gender}) {
    final newHeight = height ?? state.height;
    final newWeight = weight ?? state.weight;
    final newAge = age ?? state.age;
    final newGender = gender ?? state.gender;

    final bmi = calculateBmi(height: newHeight, weight: newWeight);
    final level = getBmiLevel(bmi);

    emit(BmiUpdated(
      height: newHeight,
      weight: newWeight,
      age: newAge,
      gender: newGender,
      bmi: bmi,
      level: level,
    ));
  }

  void toggleGender(Gender gender) => updateAndCalc(gender: gender);
  void updateHeight(double height) => updateAndCalc(height: height);
  void updateWeight(int weight) => updateAndCalc(weight: weight);
  void updateAge(int age) => updateAndCalc(age: age);

  
}
