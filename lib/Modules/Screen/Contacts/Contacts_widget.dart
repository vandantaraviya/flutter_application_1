import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_contacts_list.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

Widget contactsList() {
  List contacts = [
    {
      'text': TextRes.adil,
      'subtitle': TextRes.lifeisDecs,
      'image': Assets.assetsBoyImg2,
    },
    {
      'text': TextRes.dean,
      'subtitle': TextRes.beyourDesc,
      'image': Assets.assetsBoyImg3,
    },
    {
      'text': TextRes.max,
      'subtitle': TextRes.keppworking,
      'image': Assets.assetsBoyImg4,
    },
    {
      'text': TextRes.aditya,
      'subtitle': TextRes.makeyourself,
      'image': Assets.assetsBoyImg5,
    },
    {
      'text': TextRes.lucky,
      'subtitle': TextRes.flowersareDesc,
      'image': Assets.assetsBoyImg6,
    },
    {
      'text': TextRes.leo,
      'subtitle': TextRes.lifeisDecs,
      'image': Assets.assetsBoyImg7,
    },
    {
      'text': TextRes.james,
      'subtitle': TextRes.beyourDesc,
      'image': Assets.assetsBoyImg8,
    },
    {
      'text': TextRes.jack,
      'subtitle': TextRes.keppworking,
      'image': Assets.assetsBoyImg9,
    },
    {
      'text': TextRes.aadhya,
      'subtitle': TextRes.makeyourself,
      'image': Assets.assetsGirlsImg1,
    },
    {
      'text': TextRes.aaradhya,
      'subtitle': TextRes.flowersareDesc,
      'image': Assets.assetsGirlsImg2,
    },
    {
      'text': TextRes.dishita,
      'subtitle': TextRes.lifeisDecs,
      'image': Assets.assetsGirlsImg3,
    },
    {
      'text': TextRes.drishya,
      'subtitle': TextRes.beyourDesc,
      'image': Assets.assetsGirlsImg4,
    },
    {
      'text': TextRes.hiya,
      'subtitle': TextRes.keppworking,
      'image': Assets.assetsGirlsImg5,
    },
    {
      'text': TextRes.banni,
      'subtitle': TextRes.makeyourself,
      'image': Assets.assetsGirlsImg6,
    },
    {
      'text': TextRes.priyanshi,
      'subtitle': TextRes.flowersareDesc,
      'image': Assets.assetsGirlsImg7,
    },
  ];
  contacts.sort((a, b) {
    return a.toString().toLowerCase().compareTo(b.toString().toLowerCase());
  });
  return Expanded(
    child: Container(
      width: double.infinity.w,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        color: AppColors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 2.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: CustomText(
                  text: TextRes.mycontact,
                  color: AppColors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListView.builder(
                itemCount: contacts.length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Customcontactslist(
                    text: contacts[index]['text'],
                    subtitle: contacts[index]['subtitle'],
                    image:  AssetImage(contacts[index]['image'])
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
