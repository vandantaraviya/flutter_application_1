import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Widget tittle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(Assets.assetsLogInIcon),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget texttitle() {
  return Row(
    children: [
       SizedBox(
        width: 2.h,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
           text: TextRes.connect,
            color: AppColors.white, fontSize: 45,fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: TextRes.friends,
            color: AppColors.white, fontSize: 45,fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: TextRes.easily,
            color: AppColors.white, fontSize: 45,fontWeight: FontWeight.w400,
          ),
          CustomText(
            text: TextRes.quickly,
            color: AppColors.white, fontSize: 45,fontWeight: FontWeight.w400,
          ),
        ],
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget texttitle2() {
  return Row(
    children: [
      SizedBox(
        width: 2.h,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: TextRes.ourChatAppDesc,
            color: AppColors.textColors, fontSize: 10,fontWeight: FontWeight.w400,
          ),
          CustomText(
           text: TextRes.connectedDesc,
           color: AppColors.textColors, fontSize: 10,fontWeight: FontWeight.w400,
          ),
        ],
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget loginbutton() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: TextRes.existing,
            color: AppColors.textColors, fontSize: 14,fontWeight: FontWeight.w400,
          ),
          TextButton(
            onPressed: (){
              Get.toNamed(Routes.logIn);
            },
            child: CustomText(
              text: TextRes.login,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget onbrodingbutton(){
  return InkWell(
    onTap: () {
      Get.toNamed(Routes.signUp);
    },
    child: Container(
      height: 6.h,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white,
      ),
      child: Center(
          child: CustomText(
            text: TextRes.signUpwithDesc,
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
          ),
      ),
    ),
  );
}
