import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_button.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../authentication_controller.dart';

Widget backpage() {
  return GetBuilder<LogIncontroller>(
    builder: (controller) => Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 20.sp,
          ),
        ),
      ],
    ),
  );
}

Widget logintitle() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: TextRes.loginchatDesc,
              color: AppColors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              fontSize: 18,
          ),
        ],
      ),
    ],
  );
}

Widget logintitle1() {
  return Column(
    children: [
      CustomText(
        text: TextRes.welcomebackDesc,
          color: AppColors.secondaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget loginbutton() {
  return GetBuilder<LogIncontroller>(
    builder: (controller) => CustomButton(
      text: TextRes.login,
      textstylecolor:
          controller.isempty ? AppColors.white : AppColors.secondaryColor,
      color: controller.isempty
          ? AppColors.primaryColor
          : AppColors.lightContainerColor,
      ontap: () {
        if (controller.isempty) {
          Get.offNamed(Routes.bottamNavigation);
        } else {}
      },
    ),
  );
}

Widget forgotpassword() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 5.w,
          ),
          CustomText(
            text: TextRes.forgotpasswrod,
              color: AppColors.primaryColor,
            fontSize: 12,
          ),
        ],
      ),
    ],
  );
}

Widget logintextfiled1() {
  return GetBuilder<LogIncontroller>(
    builder: (controller) {
      return CustomTextField(
        titleText: TextRes.youremail,
        textEditingController: controller.email,
        onChanged: (p0) => controller.validator(),
        textInputAction: TextInputAction.next,
      );
    },
  );
}

Widget logintextfiled2() {
  return GetBuilder<LogIncontroller>(
    builder: (controller) {
      return CustomTextField(
        titleText: TextRes.password,
        textEditingController: controller.password,
        onChanged: (p0) => controller.validator(),
        textInputAction: TextInputAction.done,
      );
    },
  );
}
