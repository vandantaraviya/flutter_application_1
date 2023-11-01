import 'package:flutter/material.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';

import 'Setting_widget.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        automaticallyImplyLeading: false,
        title:  CustomText(
          text: TextRes.settings,
          color: AppColors.white,
          fontSize: 15,
        ),
        centerTitle: true,
      ),
      body:  SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5.h,),
            profilelist(),
          ],
        ),
      ),
    );
  }
}
