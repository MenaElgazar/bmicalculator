import 'package:bmicalculator/bmi_screen.dart';
import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/logic/cubit/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => BmiCubit(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


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
