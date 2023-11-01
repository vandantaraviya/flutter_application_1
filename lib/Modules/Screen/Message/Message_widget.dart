import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_chatbubble.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Message_controller.dart';

Widget chat() {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      children: [
        CustombubbleDays(text: TextRes.today),
        SizedBox(
          height: 2.h,
        ),
        CustombubbleSent(text: TextRes.helloalex),
        CustombubbleRecive(text: TextRes.hellonarulDecs),
        CustombubbleSent(text: TextRes.youdidDecs),
        CustombubbleRecive(text: TextRes.haveagreatDesc),
        CustombubbleSent(text: TextRes.helloalex),
        CustombubbleRecive(text: TextRes.hellonazrul),
        CustombubbleSent(text: TextRes.howareyou),
        CustombubbleRecive(text: TextRes.iamfine),
      ],
    ),
  );
}

Widget msgtyping(BuildContext context) {
  return GetBuilder<Messagecontroller>(
    builder: (controller) => Container(
        height: 50,
        width: double.infinity,
        color: const Color(0xffEEFAF8),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                controller.sheet(context);
              },
              icon: Icon(
                CupertinoIcons.link,
                size: 15.sp,
                color: AppColors.black,
              ),
            ),
            Container(
              height: 5.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: AppColors.lightContainerColor,
                borderRadius: BorderRadius.all(Radius.circular(1.h)),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.only(right: 1.h, left: 1.5.h, bottom: 0.5.h),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write your message',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(left: 4.h, top: 0.5.h),
                        child: Icon(
                          CupertinoIcons.doc_on_doc,
                          size: 15.sp,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                    maxLines: 1,
                    minLines: null,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 7.w,
            ),
            Icon(
              CupertinoIcons.camera,
              size: 15.sp,
              color: AppColors.black,
            ),
            SizedBox(
              width: 4.w,
            ),
            Icon(
              CupertinoIcons.mic_fill,
              color: AppColors.black,
              size: 15.sp,
            ),
            SizedBox(
              width: 3.w,
            ),
          ],
        )),
  );
}
