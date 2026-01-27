import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.blue21,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorManager.blue21,
          elevation: 0,
          scrolledUnderElevation: 0,
        )
      ),
      home: BmiScreen(),
    );
  }
}
