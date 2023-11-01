import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_button.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:sizer/sizer.dart';
import 'onbroding_widget.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [
                  AppColors.black,
                  AppColors.linearGradientprimaryColor,
                  AppColors.linearGradientsecondaryColor,
                ],
              transform: GradientRotation(100),
            ),
          ),
          child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                tittle(),
                 SizedBox(
                  height: 1.h,
                ),
                texttitle(),
                 SizedBox(
                  height: 4.h,
                ),
                texttitle2(),
                 SizedBox(
                  height: 4.h,
                ),
                CustomSocialAppLogIn(image: const AssetImage(Assets.assetsAppleIconWhite)),
                 SizedBox(
                  height: 4.h,
                ),
                 Row(
                    children: <Widget>[
                      const Expanded(
                        child: Divider(
                          indent: 30,
                          color: AppColors.dividerColor,
                        ),
                      ),
                      SizedBox(width: 5.w,),
                       CustomText(
                           text: TextRes.or,
                           fontSize: 12,
                           fontWeight: FontWeight.w400,
                           color: AppColors.white
                       ),
                      SizedBox(width: 5.w,),
                      const Expanded(
                        child: Divider(
                          endIndent: 30,
                          color: AppColors.dividerColor,
                        ),
                      ),
                    ]
                ),
                 SizedBox(
                  height: 5.h,
                ),
               onbrodingbutton(),
                loginbutton(),
              ],
            ),
        ),
      ),
    );
  }
}


