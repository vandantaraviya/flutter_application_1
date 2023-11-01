import 'package:flutter/material.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:flutter_application_1/utlis/Common/app_colors.dart';
import 'package:flutter_application_1/utlis/Common/app_strings.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_button.dart';
import 'package:flutter_application_1/utlis/Common_Widgets/custom_text_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../authentication_controller.dart';
import 'Login_widget.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LogIncontroller());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                 SizedBox(
                  height: 1.h,
                ),
                backpage(),
                 SizedBox(
                  height: 4.h,
                ),
                logintitle(),
                 SizedBox(
                  height: 2.h,
                ),
                logintitle1(),
                 SizedBox(
                  height: 4.h,
                ),
                CustomSocialAppLogIn(image: const AssetImage(Assets.assetsAppleIconBlack)),
                 SizedBox(
                  height: 4.h,
                ),
                 Row(children: <Widget>[
                  const Expanded(
                    child: Divider(
                      color: AppColors.dividerColor,
                    ),
                  ),
                  SizedBox(
                    width: 2.h,
                  ),
                   CustomText(
                       text: TextRes.or,
                       fontSize: 12,
                       fontWeight: FontWeight.w400,
                       color: AppColors.primaryColor
                   ),
                  SizedBox(
                    width: 2.h,
                  ),
                   const Expanded(
                    child: Divider(
                      color: AppColors.dividerColor,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 2.h,
                ),
                logintextfiled1(),
                logintextfiled2(),
                 SizedBox(
                  height: 10.h,
                ),
                loginbutton(),
                 SizedBox(
                  height: 1.h,
                ),
                forgotpassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
