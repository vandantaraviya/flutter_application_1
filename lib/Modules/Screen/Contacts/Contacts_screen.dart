// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';
import 'Contacts_widget.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            color: AppColors.white,
          )),
        ),
        title: CustomText(
          text: TextRes.contact,
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
            ),
            child: Center(
                child: Icon(
              Icons.person_add_alt_1,
              size: 25.sp,
              color: AppColors.white,
            )),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            contactsList(),
          ],
        ),
      ),
    );
  }
}
