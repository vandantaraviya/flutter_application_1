// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

class Customstatus extends StatelessWidget {
   String text;
   ImageProvider<Object> image;
   Customstatus({super.key,required this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.borderColor, width: 0.5.w),
            image: DecorationImage(image: image,  fit: BoxFit.fill,),
          ),
        ),
        CustomText(
          text: text,
          color: AppColors.white,
            fontSize: 14,
        ),
      ],
    );
  }
}