import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:bmicalculator/features/bmi_data/widgets/bmi_index.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.bmi,
    required this.gender,
    required this.age,
    required this.level,
  });
  final int bmi;
  final Gender gender;
  final int age;
  final int level;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Result',style: AppTextStyle.title18w700.copyWith(color: ColorManager.white),),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: ColorManager.red55),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your BMI is: $bmi',
              style: AppTextStyle.title36w700.copyWith(color: ColorManager.white),
            ),
            SizedBox(height: 16),
            Text(
              'Gender: ${gender == Gender.male ? 'Male' : 'Female'}',
              style: AppTextStyle.title36w700.copyWith(color: ColorManager.white),
            ),
            SizedBox(height: 16),
            Text(
              'Age: $age',
              style: AppTextStyle.title36w700.copyWith(color: ColorManager.white),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(24),
              child: SizedBox(child: BmiIndex(level: level)),
            ),
          ],
        ),
      ),
    );
  }
}