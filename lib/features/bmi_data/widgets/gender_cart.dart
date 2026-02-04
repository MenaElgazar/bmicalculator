import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:bmicalculator/logic/cubit/bmi_cubit.dart';
import 'package:bmicalculator/logic/cubit/bmi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderCart extends StatelessWidget {
  final IconData icon;
  final Gender gender;

  final bool isSelected;
  final void Function(Gender gender)? onTap;

  const GenderCart({
    super.key,
    required this.icon,
    required this.gender,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
           onTap!(gender);
          },
          child: Container(
            width: 161.1999969482422,
            height: 167.1999969482422,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: ColorManager.blue33,
              border: isSelected
                  ? Border.all(
                      color: ColorManager.red55.withAlpha((.4 * 255).toInt()),
                      width: .9,
                    )
                  : null,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: isSelected ? ColorManager.red55 : ColorManager.white,
                  size: 48,
                ),
                Text(
                  gender == Gender.male ? "Male" : "Female",
                  style: AppTextStyle.title16w700.copyWith(
                    color: ColorManager.grey98,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
