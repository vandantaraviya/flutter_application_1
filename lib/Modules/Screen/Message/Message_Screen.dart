// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Message_controller.dart';
import 'Message_widget.dart';

// ignore: must_be_immutable
class MessageScreen extends StatelessWidget {
  MessageScreen({
    super.key,
  });

  var name = Get.arguments['name'];
  var image = Get.arguments['image'];

  @override
  Widget build(BuildContext context) {
    Get.put(Messagecontroller());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20.sp,
              color: AppColors.black,
            ),
          ),
          title: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(image.toString()),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.h, left: 4.3.h),
                    child: Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.activeColors,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 2.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: name.toString(),
                    overflow: TextOverflow.ellipsis,
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                  ),
                  CustomText(
                   text: TextRes.activenow,
                      color: Colors.grey.shade600,
                    fontSize: 10,
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Icon(
              CupertinoIcons.phone,
              size: 20.sp,
              color: AppColors.black,
            ),
            SizedBox(
              width: 3.h,
            ),
            Icon(
              CupertinoIcons.video_camera,
              size: 20.sp,
              color: AppColors.black,
            ),
            SizedBox(
              width: 3.h,
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: chat()
              ),
             msgtyping(context),
            ],
          ),
        ),
      ),
    );
  }
}
