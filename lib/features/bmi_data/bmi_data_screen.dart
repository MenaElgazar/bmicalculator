
import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:bmicalculator/features/bmi_data/widgets/calculate_button.dart';

import 'package:bmicalculator/features/bmi_data/widgets/gender_cart.dart';
import 'package:bmicalculator/features/bmi_data/widgets/height_slider.dart';
import 'package:bmicalculator/features/bmi_data/widgets/value_picker.dart';
import 'package:flutter/material.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({super.key});

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  Gender selectedgender=Gender.male;
  double height=140;
  int weight=40;
  int age=10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
         Text("BMI CALCULATOR",style: AppTextStyle.title20w700.copyWith(color:ColorManager.white),),
           SizedBox(height: 30,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             GenderCart(icon:Icons.female, gender:Gender.female,  isSelected: selectedgender==Gender.female, onTap: (Gender gender) { setState(() {
               selectedgender=gender;
             }); },),
             GenderCart(icon:Icons.male, gender: Gender.male,  isSelected: selectedgender==Gender.male, onTap: (Gender gender) { 
              setState(() {
                selectedgender=gender;
              });
              },),
        
           ],),
           SizedBox(height: 20,),
           HeightSlider(height: height, onChanged: (double value) { 
            setState(() {
              height=value;
            });
            },),
            SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           
            children: [
             ValuePicker(label: 'WEIGHT', value: weight, onChanged: (int value) { 
              setState(() {
                weight=value;
              });
              }, min: 20, max: 200, ),
              ValuePicker(label: 'AGE', value: age, onChanged: (int value) { 
                setState(() {
                  age=value;
                });
               }, min: 1, max: 100,),
           ],),
           SizedBox(height: 20,),
           CalculateButton(height: height, weight: weight, age: age, gender: selectedgender,),
           
        ],),
      ),
    );
  }
}