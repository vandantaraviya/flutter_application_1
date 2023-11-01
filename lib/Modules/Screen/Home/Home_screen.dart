import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Home_controller.dart';
import 'Home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Homecontroller());
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.borderColor),
          ),
          child: Center(
              child: Icon(
                CupertinoIcons.search,
                size: 25.sp,
                color: Colors.white,
              )),
        ),
        title:    CustomText(
          text: TextRes.home,
          color: AppColors.white,
          fontSize: 15,
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.borderColor),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.assetsBoyImg1),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            status(context),
            SizedBox(height: 2.h,),
            chat(),
          ],
        ),
      ),
    );
  }
}
