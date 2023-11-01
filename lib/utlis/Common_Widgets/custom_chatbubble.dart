import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';



class CustombubbleSent extends StatelessWidget {
  String text;
   CustombubbleSent({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Bubble(
          style: BubbleStyle(
            padding: BubbleEdges.all(1.3.h),
            margin: BubbleEdges.only(top: 1.3.h,right: 2.h),
            color: AppColors.chatColor,
            nip: BubbleNip.rightTop,
            alignment: Alignment.topRight,
          ),
          child: CustomText(
            text: text,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
        SizedBox(height: 0.5.h,),
        Padding(
          padding:  EdgeInsets.only(right: 3.h),
          child: CustomText(
            text: TextRes.msgtime,
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class CustombubbleRecive extends StatelessWidget {
  String text;
  CustombubbleRecive({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Bubble(
          style: BubbleStyle(
            padding: BubbleEdges.all(1.3.h),
            margin: BubbleEdges.only(top: 1.3.h,right: 2.h),
            color: AppColors.lightContainerColor,
            nip: BubbleNip.leftTop,
            alignment: Alignment.topLeft,
          ),
          child: CustomText(
            text: text,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
        SizedBox(height: 0.5.h,),
        Padding(
          padding:  EdgeInsets.only(left: 1.h),
          child: CustomText(
            text: TextRes.msgtime,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class CustombubbleDays extends StatelessWidget {
  String text;
  CustombubbleDays({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Bubble(
      style: BubbleStyle(
        padding: BubbleEdges.all(1.3.h),
        margin: BubbleEdges.only(top: 1.3.h,right: 2.h),
        color: AppColors.lightContainerColor,
        alignment: Alignment.center,
        elevation: 2,
      ),
      child: CustomText(
        text: text,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        fontSize: 9,
      ),
    );
  }
}
