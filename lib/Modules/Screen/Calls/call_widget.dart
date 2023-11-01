import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_call_list.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

// ignore: non_constant_identifier_names
Widget Listphone() {
  List calllist = [
    {
     'text': TextRes.adil,
        'time': 'Today, 09:30 AM',
        'image':  Assets.assetsBoyImg2,
    },
    {
      'text': TextRes.dean,
        'time': 'Today, 07:30 AM',
        'image':  Assets.assetsBoyImg3,
    },
    {
     'text': TextRes.max,
        'time': 'Yesterday, 07:35 PM',
        'image':  Assets.assetsBoyImg4,
    },
    {
      'text': TextRes.aditya,
        'time': 'Yesterday, 05:00 PM',
        'image':  Assets.assetsBoyImg5,
    },
    {
      'text': TextRes.lucky,
        'time': 'Monday, 09:30 AM',
        'image':  Assets.assetsBoyImg6,
    },
    {
      'text': TextRes.leo,
        'time': 'Monday, 08:00 AM',
        'image':  Assets.assetsBoyImg7,
    },
    {
      'text': TextRes.james,
        'time': 'Monday, 05:30 AM',
        'image':  Assets.assetsBoyImg8,
    },
    {
      'text': TextRes.aadhya,
        'time': '03/07/22, 08:30 AM',
        'image':  Assets.assetsGirlsImg1,
    },
    {
      'text': TextRes.aaradhya,
      'time': '02/07/22, 07:30 AM',
      'image':  Assets.assetsGirlsImg2,
    },
    {
      'text': TextRes.dishita,
      'time': '03/08/22, 10:30 AM',
      'image':  Assets.assetsGirlsImg3,
    },
    {
      'text': TextRes.drishya,
      'time': '30/08/22, 04:30 AM',
      'image':  Assets.assetsGirlsImg4,
    },
    {
      'text': TextRes.hiya,
      'time': '26/08/22, 05:30 AM',
      'image':  Assets.assetsGirlsImg5,
    },
    {
      'text': TextRes.banni,
      'time': '20/08/22, 09:30 AM',
      'image':  Assets.assetsGirlsImg6,
    },
    {
      'text': TextRes.priyanshi,
      'time': '10/08/22, 10:30 AM',
      'image':  Assets.assetsGirlsImg7,
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
        padding:  EdgeInsets.only(top: 2.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.h),
                height: 0.5.h,
                width: 9.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              SizedBox(height: 3.h,),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: CustomText(
                  text: TextRes.recent,
                  color: AppColors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                ),
              ),
              Column(
                children: [
                  ListView.builder(
                    itemCount: calllist.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Customcalllist(
                        text: calllist[index]['text'],
                        time: calllist[index]['time'],
                        image: AssetImage(calllist[index]['image']),
              ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}