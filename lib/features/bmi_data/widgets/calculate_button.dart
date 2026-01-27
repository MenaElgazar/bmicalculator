
import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/helpers/helper_function.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:bmicalculator/features/result/result_screen.dart';


import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget{
  final double height;
  final int weight;
  final int age;
  final Gender gender;

  const CalculateButton({super.key, required this.height, required this.weight, required this.age, required this.gender});
@override
  
  Widget build(BuildContext context) {
return TextButton(onPressed: (){
 int bmi=calculateBmi(height: height, weight: weight);
int bmiLevel=getBmiLevel( bmi);
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResultScreen(bmi: bmi, gender: gender, age: age, level: bmiLevel)

)
);

  
}, 
style: TextButton.styleFrom(
  minimumSize: Size(double.infinity,64),
  backgroundColor: ColorManager.red55
),

child: Text('Calculate',style: AppTextStyle.title16w700.copyWith(color: ColorManager.white)
,)
);
  }
  
  
}
