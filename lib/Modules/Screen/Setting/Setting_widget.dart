// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_Listtile.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

// ignore: non_constant_identifier_names
Widget profilelist() {
  return Expanded(
    child: Container(
      width: double.infinity.w,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        color: AppColors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 1.h,left: 20.h),
              height: 0.5.h,
              width: 9.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(Assets.assetsBoyImg1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: TextRes.myprofile,
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                CustomText(
                                  text: TextRes.beyourDesc,
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Icon(
                          CupertinoIcons.qrcode_viewfinder,
                          size: 22.sp,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2.h,),
            CustomListtile(
                settingname: TextRes.account,
                icon: Icons.key,
                subtitle: TextRes.privacyDesc,
            ),
            SizedBox(height: 1.h,),
            CustomListtile(
              settingname: TextRes.chat,
              icon: CupertinoIcons.chat_bubble_text,
              subtitle: TextRes.chathistory,
            ),
            SizedBox(height: 1.h,),
            CustomListtile(
              settingname: TextRes.notifications,
              icon: CupertinoIcons.bell,
              subtitle: TextRes.msggroupDesc,
            ),
            SizedBox(height: 1.h,),
            CustomListtile(
              settingname: TextRes.help,
              icon: CupertinoIcons.question_circle,
              subtitle: TextRes.helpcenterDecs,
            ),
            SizedBox(height: 1.h,),
            CustomListtile(
              settingname: TextRes.storageanddata,
              icon: CupertinoIcons.arrow_up_arrow_down,
              subtitle: TextRes.netwrokusageDesc,
            ),
            SizedBox(height: 1.h,),
            CustomListtile(
              settingname: TextRes.inviteFriend,
              icon: CupertinoIcons.person_2,
              subtitle: '',
            ),
          ],
        ),
      ),
    ),
  );
}
