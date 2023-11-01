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

Widget backpagesignup() {
  return Row(
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
  );
}

Widget signuptitle() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: TextRes.signUpwithDesc,
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

// ignore: non_constant_identifier_names
Widget signuptitle1() {
  return Column(
    children: [
      CustomText(
        text: TextRes.signUpGetchattingDesc,
        color: AppColors.secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        textAlign: TextAlign.center,
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget signupbutton() {
  return GetBuilder<Signupcontroller>(
    builder: (controller) => CustomButton(
      text: TextRes.creataccount,
      textstylecolor:
          controller.isTextEmpty ? AppColors.white : AppColors.secondaryColor,
      color: controller.isTextEmpty
          ? AppColors.primaryColor
          : AppColors.lightContainerColor,
      ontap: () {
        if (controller.isTextEmpty) {
          Get.toNamed(Routes.bottamNavigation);
        } else {}
      },
    ),
  );
}

Widget textfiled1() {
  return GetBuilder<Signupcontroller>(
    builder: (controller) {
      return CustomTextField(
        titleText: TextRes.yourname,
        textEditingController: controller.name,
        onChanged: (p0) => controller.validator(),
        textInputAction: TextInputAction.next,
      );
    },
  );
}

Widget textfiled2() {
  return GetBuilder<Signupcontroller>(
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

Widget textfiled3() {
  return GetBuilder<Signupcontroller>(
    builder: (controller) {
      return CustomTextField(
        titleText: TextRes.password,
        textEditingController: controller.password,
        onChanged: (p0) => controller.validator(),
        textInputAction: TextInputAction.next,
      );
    },
  );
}

Widget textfiled4() {
  return GetBuilder<Signupcontroller>(
    builder: (controller) {
      return CustomTextField(
        titleText: TextRes.confrimpassword,
        textEditingController: controller.confirmpassword,
        onChanged: (p0) => controller.validator(),
        textInputAction: TextInputAction.done,
      );
    },
  );
}
