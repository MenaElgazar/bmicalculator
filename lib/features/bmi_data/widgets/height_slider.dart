import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class HeightSlider  extends StatefulWidget{

  final double height;
  final void Function(double value) onChanged;

  const HeightSlider({super.key, required this.height, required this.onChanged});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 224.8000030517578,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        color: ColorManager.blue33,
       ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Height",style: AppTextStyle.title20w700.copyWith(color:ColorManager.grey98).copyWith(letterSpacing: .8),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
         textBaseline: TextBaseline.alphabetic,
         crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
          Text(widget.height.toStringAsFixed(0),style: AppTextStyle.title48w700.copyWith(color:ColorManager.white),),
          Text("cm",style: AppTextStyle.title18w500.copyWith(color:ColorManager.grey98),),
        ],),
        Slider(max: 220,min: 30,value: widget.height, onChanged:(val){
          widget.onChanged(val);
        },activeColor: ColorManager.red55,inactiveColor: ColorManager.red42)
      ],),
    );
  }
}