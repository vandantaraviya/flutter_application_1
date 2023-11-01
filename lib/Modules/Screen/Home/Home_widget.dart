// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_chat_list.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_status.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'Home_controller.dart';


Widget status(
  BuildContext context,
) {
  return GetBuilder<Homecontroller>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    controller.file != null
                        ? GestureDetector(
                            onTap: () {
                              controller.showPicker(
                                context,
                              );
                            },
                            child: Container(
                              height: 7.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: AppColors.borderColor, width: 0.5.w),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: FileImage(
                                    controller.file!,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 7.h,
                            width: 15.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: AppColors.borderColor, width: 0.5.w),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Assets.assetsBoyImg1)),
                            ),
                          ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h, left: 4.8.h),
                      child: InkWell(
                        onTap: () {
                          controller.showPicker(context);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: AppColors.black),
                              color: AppColors.white,
                            ),
                            child: Center(
                              child: Icon(Icons.add,
                                  color: AppColors.black, size: 12.sp),
                            )),
                      ),
                    ),
                  ],
                ),
                Text(
                  TextRes.mystatus,
                  style: TextStyle(color: AppColors.white, fontSize: 14.sp),
                ),
              ],
            ),
            Customstatus(
              text: TextRes.adil,
              image: const AssetImage(Assets.assetsBoyImg2),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.dean,
              image: const AssetImage(Assets.assetsBoyImg3),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.max,
              image: const AssetImage(Assets.assetsBoyImg4),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.aditya,
              image: const AssetImage(Assets.assetsBoyImg5),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.lucky,
              image: const AssetImage(Assets.assetsBoyImg6),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.leo,
              image: const AssetImage(Assets.assetsBoyImg7),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.james,
              image: const AssetImage(Assets.assetsBoyImg8),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.jack,
              image: const AssetImage(Assets.assetsBoyImg9),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.aadhya,
              image: const AssetImage(Assets.assetsGirlsImg1),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.aaradhya,
              image: const AssetImage(Assets.assetsGirlsImg2),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.dishita,
              image: const AssetImage(Assets.assetsGirlsImg3),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.drishya,
              image: const AssetImage(Assets.assetsGirlsImg4),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.hiya,
              image: const AssetImage(Assets.assetsGirlsImg5),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.banni,
              image: const AssetImage(Assets.assetsGirlsImg6),
            ),
            SizedBox(
              width: 4.w,
            ),
            Customstatus(
              text: TextRes.priyanshi,
              image: const AssetImage(Assets.assetsGirlsImg7),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget chat() {
  return GetBuilder<Homecontroller>(builder: (controller) {
    List data = [
      {
        'name': TextRes.adil,
        'image': Assets.assetsBoyImg2,
        'chat': TextRes.howareyou,
      },
      {
        'name': TextRes.dean,
        'image': Assets.assetsBoyImg3,
        'chat': TextRes.heycanyouDesc,
      },
      {
        'name': TextRes.max,
        'image': Assets.assetsBoyImg4,
        'chat': TextRes.dontmissDecs,
      },
      {
        'name': TextRes.aditya,
        'image': Assets.assetsBoyImg5,
        'chat': TextRes.howareyou,
      },
      {
        'name': TextRes.lucky,
        'image': Assets.assetsBoyImg6,
        'chat': TextRes.heycanyouDesc,
      },
      {
        'name': TextRes.leo,
        'image': Assets.assetsBoyImg7,
        'chat': TextRes.dontmissDecs,
      },
      {
        'name': TextRes.james,
        'image': Assets.assetsBoyImg8,
        'chat': TextRes.howareyou,
      },
      {
        'name': TextRes.jack,
        'image': Assets.assetsBoyImg9,
        'chat': TextRes.heycanyouDesc,
      },
      {
        'name': TextRes.aadhya,
        'image': Assets.assetsGirlsImg1,
        'chat': TextRes.dontmissDecs,
      },
      {
        'name': TextRes.aaradhya,
        'image': Assets.assetsGirlsImg2,
        'chat': TextRes.howareyou,
      },
      {
        'name': TextRes.dishita,
        'image': Assets.assetsGirlsImg3,
        'chat': TextRes.heycanyouDesc,
      },
      {
        'name': TextRes.drishya,
        'image': Assets.assetsGirlsImg4,
        'chat': TextRes.dontmissDecs,
      },
      {
        'name': TextRes.hiya,
        'image': Assets.assetsGirlsImg5,
        'chat': TextRes.howareyou,
      },
      {
        'name': TextRes.banni,
        'image': Assets.assetsGirlsImg6,
        'chat': TextRes.heycanyouDesc,
      },
      {
        'name': TextRes.priyanshi,
        'image': Assets.assetsGirlsImg7,
        'chat': TextRes.dontmissDecs,
      },
    ];
    return Expanded(
      child: Container(
        width: double.infinity.w,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          color: AppColors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: ListView.builder(
            itemCount: data.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
              children: [
                Customchatlist(
                  name: data[index]['name'],
                  chat: data[index]['chat'],
                  image: AssetImage(data[index]['image']),
                  ontap: () {
                    Get.toNamed(
                      Routes.messageScreen,
                      arguments: {
                        "name": data[index]['name'],
                        "image": data[index]['image']
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  });
}
