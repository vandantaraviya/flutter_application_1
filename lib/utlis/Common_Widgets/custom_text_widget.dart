import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomText extends StatelessWidget {
  String text;
  double fontSize;
  TextAlign? textAlign;
  Color? color;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  TextOverflow? overflow;
  CustomText({super.key, required this.text, required this.fontSize,this.textAlign,this.color,this.fontStyle,this.fontWeight,this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontSize: fontSize.sp,
    ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
