import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class BmiIndex extends StatelessWidget {
  final int level;

  const BmiIndex({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: (30 + (level * 85))),
          child: Icon(
            Icons.arrow_drop_down,
            color: ColorManager.white,
            size: 30,
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 85,
                  height: level == 0 ? 20 : 16,
                  decoration: BoxDecoration(
                    color: Color(0xffC0CA33),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Underweight',
                  style: AppTextStyle.title10w500.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 85,
                  height: level == 1 ? 20: 16,
                  decoration: BoxDecoration(color: Color(0xff4CAF50)),
                ),
                SizedBox(height: 4),
                Text(
                  'Normal',
                  style: AppTextStyle.title10w500.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 85,
                  height: level == 2 ? 20: 16,
                  decoration: BoxDecoration(color: Color(0xffFF9800)),
                ),
                SizedBox(height: 4),
                Text(
                  'Overweight',
                  style:AppTextStyle.title10w500.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 85,
                  height: level == 3 ? 20 : 16,
                  decoration: BoxDecoration(
                    color: Color(0xffF44336),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Underweight',
                  style: AppTextStyle.title10w500.copyWith(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}