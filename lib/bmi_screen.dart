import 'package:bmicalculator/features/bmi_data/bmi_data_screen.dart';

import 'package:flutter/material.dart';


enum Gender { male, female }

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});

  @override


  Widget build(BuildContext context) {
    return BmiDataScreen();
  }
}
