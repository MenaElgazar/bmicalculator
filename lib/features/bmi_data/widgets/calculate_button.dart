import 'package:bmicalculator/bmi_screen.dart';

import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:bmicalculator/features/result/result_screen.dart';
import 'package:bmicalculator/logic/cubit/bmi_cubit.dart';
import 'package:bmicalculator/logic/cubit/bmi_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculateButton extends StatelessWidget {
  final double height;
  final int weight;
  final int age;
 
  final Gender gender;
 

  const CalculateButton({
    super.key,
    required this.height,
    required this.weight,
    required this.age,
    required this.gender, 
  });
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<BmiCubit, BmiState>(
      builder: (context, state) {
        return TextButton(
          onPressed: () {
            context.read<BmiCubit>().updateAndCalc();
            Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => const ResultScreen(),
  ),
);

          },
          style: TextButton.styleFrom(
            minimumSize: Size(double.infinity, 64),
            backgroundColor: ColorManager.red55,
          ),

          child: Text(
            'Calculate',
            style: AppTextStyle.title16w700.copyWith(color: ColorManager.white),
          ),
        );
      },
    );
  }
}
