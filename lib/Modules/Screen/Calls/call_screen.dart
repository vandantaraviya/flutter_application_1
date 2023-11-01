import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

import 'call_widget.dart';



class Callscreen extends StatelessWidget {
  const Callscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading:  Container(
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
          text: TextRes.calls,
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
                  Icons.add_call,
                  size: 25.sp,
                  color: AppColors.white,
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 4.h,),
            Listphone(),
          ],
        ),
      ),
    );
  }
}
