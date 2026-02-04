import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:bmicalculator/features/result/widgets/bmi_index.dart';
import 'package:bmicalculator/logic/cubit/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<BmiCubit>().state;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Result',
          style: AppTextStyle.title18w700.copyWith(
            color: ColorManager.white,
          ),
        ),
        leading: BackButton(color: ColorManager.red55),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your BMI is: ${state.bmi.toStringAsFixed(1)}',
                style: AppTextStyle.title36w700.copyWith(
                  color: ColorManager.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Gender: ${state.gender == Gender.male ? 'Male' : 'Female'}',
                style: AppTextStyle.title20w700.copyWith(
                  color: ColorManager.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Age: ${state.age}',
                style: AppTextStyle.title20w700.copyWith(
                  color: ColorManager.white,
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(24),
                child: BmiIndex(level: state.level),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
