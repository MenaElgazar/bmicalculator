import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:bmicalculator/features/bmi_data/widgets/calculate_button.dart';

import 'package:bmicalculator/features/bmi_data/widgets/gender_cart.dart';
import 'package:bmicalculator/features/bmi_data/widgets/height_slider.dart';
import 'package:bmicalculator/features/bmi_data/widgets/value_picker.dart';
import 'package:bmicalculator/logic/cubit/bmi_cubit.dart';
import 'package:bmicalculator/logic/cubit/bmi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiDataScreen extends StatelessWidget {
  const BmiDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final  cubitcontroller=context.read<BmiCubit>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "BMI CALCULATOR",
                style: AppTextStyle.title20w700.copyWith(
                  color: ColorManager.white,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<BmiCubit, BmiState>(
                    builder: (context, state) {
                      return GenderCart(
                        icon: Icons.female,
                        gender: Gender.female,
                        isSelected: state.gender == Gender.female,
                        onTap: cubitcontroller.toggleGender,
                      );
                    },
                  ),
                  BlocBuilder<BmiCubit, BmiState>(
                    builder: (context, state) {
                      return GenderCart(
                        icon: Icons.male,
                        gender: Gender.male,
                        isSelected: state.gender == Gender.male,
                        onTap: cubitcontroller.toggleGender,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              BlocBuilder<BmiCubit, BmiState>(
                builder: (context, state) {
                  return HeightSlider(
                    height: state.height,
                    onChanged: (val) =>
                        cubitcontroller.updateHeight(val),
                  );
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
          
                children: [
                  BlocBuilder<BmiCubit, BmiState>(
                    builder: (context, state) {
                      return ValuePicker(
                        label: 'WEIGHT',
                        value: state.weight,
                        onChanged: (value) {
                          cubitcontroller.updateWeight(value);
                        },
                        min: 20,
                        max: 200,
                      );
                    },
                  ),
                  BlocBuilder<BmiCubit, BmiState>(
                    builder: (context, state) {
                      return ValuePicker(
                        label: 'AGE',
                        value: state.age,
                        onChanged: (int value) {
                          cubitcontroller.updateAge(value);
                          
                        },
                        min: 1,
                        max: 100,
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              BlocBuilder<BmiCubit, BmiState>(
                builder: (context, state) {
                  return CalculateButton(
                    
                  
                    height: state.height,
                    weight: state.weight,
                    age: state.age,
                    gender: state.gender,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
