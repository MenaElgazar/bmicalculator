import 'package:bmicalculator/core/theme/color_manager.dart';
import 'package:bmicalculator/core/theme/text_style.dart';
import 'package:flutter/material.dart';

class ValuePicker extends StatelessWidget{
  final String label;
  final int value,min,max;
  final void Function(int value) onChanged;


  const ValuePicker({super.key, required this.label, required this.value, required this.onChanged, required this.min, required this.max, });
  @override
  Widget build(BuildContext context) {
return Container(
  width: 161.1999969482422,
  height: 188,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(48),
    color: ColorManager.blue33,
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(label,style: AppTextStyle.title16w700.copyWith(color: ColorManager.grey98),),
      Text(value.toString(),style: AppTextStyle.title36w700.copyWith(color: ColorManager.white),),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        TextButton(
          onPressed: (){
            if(value>min){
            onChanged(value-1);
            }
          },
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.grey5e,
            ),
            child:  Icon(Icons.remove,color: ColorManager.white,size: 24,)),
        ),

        
        TextButton(
          onPressed: (){
            if(value<max){
            onChanged(value+1);
            }
          },
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.grey5e,
            ),
            child: Icon(Icons.add,color: ColorManager.white,size: 24,),
          
          ),
        )
    
    ]
 ,)
      ],
  
  
      )
    
  
);
  }

}